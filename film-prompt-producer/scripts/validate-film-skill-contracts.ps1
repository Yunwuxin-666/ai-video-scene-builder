param(
    [string]$SkillRoot
)

$ErrorActionPreference = "Stop"
$failures = [System.Collections.Generic.List[string]]::new()

if ([string]::IsNullOrWhiteSpace($SkillRoot)) {
    $producerRoot = Split-Path -Parent $PSScriptRoot
    $SkillRoot = Split-Path -Parent $producerRoot
}

function Require-Text {
    param(
        [string]$Path,
        [string]$Pattern,
        [string]$Label
    )

    if (-not (Test-Path -LiteralPath $Path)) {
        $failures.Add("Missing file: $Path")
        return
    }

    $content = Get-Content -LiteralPath $Path -Raw -Encoding UTF8
    if ($content -notmatch $Pattern) {
        $failures.Add("$Label missing in $Path")
    }
}

function Forbid-Text {
    param(
        [string]$Path,
        [string]$Pattern,
        [string]$Label
    )

    if (-not (Test-Path -LiteralPath $Path)) {
        $failures.Add("Missing file: $Path")
        return
    }

    $content = Get-Content -LiteralPath $Path -Raw -Encoding UTF8
    if ($content -match $Pattern) {
        $failures.Add("$Label unexpectedly present in $Path")
    }
}

$producer = Join-Path $SkillRoot "film-prompt-producer"
$requiredReferences = @(
    "filmspec-v1.md",
    "department-ownership.md",
    "narrative-gates.md",
    "continuity-ledger.md",
    "prompt-density.md",
    "production-modes.md",
    "patch-examples.md",
    "quality-scorecard.md",
    "routing-boundaries.md",
    "conceptspec-v1.md",
    "reference-role-contract.md",
    "concept-quality-scorecard.md",
    "concept-output-package.md"
)

foreach ($name in $requiredReferences) {
    $path = Join-Path $producer "references\$name"
    if (-not (Test-Path -LiteralPath $path)) {
        $failures.Add("Missing producer reference: $name")
    }
}

Require-Text (Join-Path $producer "SKILL.md") "only owner of the active FilmSpec" "FilmSpec ownership"
Require-Text (Join-Path $producer "SKILL.md") "active ConceptSpec" "ConceptSpec ownership"
Require-Text (Join-Path $producer "SKILL.md") "Default to Stable Mode" "production mode selection"
Require-Text (Join-Path $producer "SKILL.md") "overall average is below 4.2" "delivery score gate"
Require-Text (Join-Path $producer "references\conceptspec-v1.md") "Structural complexity and surface noise are independent" "concept complexity separation"
Require-Text (Join-Path $producer "references\reference-role-contract.md") "quality_target" "quality reference role"
Require-Text (Join-Path $producer "references\concept-quality-scorecard.md") "reference boundaries" "concept reference gate"
Require-Text (Join-Path $producer "SKILL.md") "routing-boundaries.md" "routing boundary loading"
Require-Text (Join-Path $SkillRoot "orchestrate-creative-production\SKILL.md") "For a film-only multi-department workflow" "orchestrator film boundary"
Require-Text (Join-Path $SkillRoot "filmmaker\SKILL.md") "Do not use as a generic film-planning" "filmmaker trigger boundary"
Require-Text (Join-Path $SkillRoot "creative-director\SKILL.md") "Do not use for general film creative direction" "creative-director trigger boundary"
Require-Text (Join-Path $SkillRoot "storyboard-video-prompts\SKILL.md") "act as the story architect" "story routed mode"
Require-Text (Join-Path $SkillRoot "aivideo-prompt\SKILL.md") "act as the final platform compiler" "compiler routed mode"
Require-Text (Join-Path $SkillRoot "aivideo-prompt\references\seedance-2-5-profile.md") "30 images, 10 videos, and 10 audio" "Seedance reference limits"
Require-Text (Join-Path $SkillRoot "aivideo-prompt\references\seedance-2-5-profile.md") "Do not state that Seedance 2.5 has confirmed native 4K" "Seedance 4K guard"
Require-Text (Join-Path $SkillRoot "aivideo-prompt\references\apple-visual-direction.md") "Load only when the user explicitly requests Apple-style" "Apple opt-in guard"
Forbid-Text (Join-Path $SkillRoot "aivideo-prompt\SKILL.md") "## Apple-Style Visual Direction Constraints" "embedded Apple visual rules"

$cameraSkill = ([char]0x955C) + ([char]0x5934) + ".skill\SKILL.md"
$lightingSkill = ([char]0x706F) + ([char]0x5149) + ".skill\SKILL.md"
$durationSkill = ([char]0x65F6) + ([char]0x957F) + ".skill\SKILL.md"
$musicSkill = ([char]0x97F3) + ([char]0x4E50) + ".skill\SKILL.md"
$styleSkill = ([char]0x98CE) + ([char]0x683C) + ".skill\SKILL.md"

$departmentFiles = @(
    $cameraSkill,
    $lightingSkill,
    $durationSkill,
    $musicSkill,
    $styleSkill,
    "vfx-prompt-designer\SKILL.md",
    "character-design\SKILL.md",
    "environment-concept-design\SKILL.md"
)

foreach ($relative in $departmentFiles) {
    Require-Text (Join-Path $SkillRoot $relative) "## Routed Mode" "department routed mode"
}

$conceptEvalPath = Join-Path $producer "evals\concept-cases.json"
if (-not (Test-Path -LiteralPath $conceptEvalPath)) {
    $failures.Add("Missing concept eval cases")
}
else {
    try {
        $conceptCases = Get-Content -LiteralPath $conceptEvalPath -Raw -Encoding UTF8 | ConvertFrom-Json
        if ($conceptCases.Count -lt 5) {
            $failures.Add("Expected at least 5 concept eval cases")
        }
        $conceptIds = @{}
        foreach ($case in $conceptCases) {
            foreach ($field in @("id", "input", "deliverable", "reference_roles", "must_lock", "must_not")) {
                if ($null -eq $case.$field) {
                    $failures.Add("Concept eval case missing $field")
                }
            }
            if ($conceptIds.ContainsKey($case.id)) {
                $failures.Add("Duplicate concept eval case id: $($case.id)")
            }
            else {
                $conceptIds[$case.id] = $true
            }
        }
        foreach ($requiredId in @(
            "quality-reference-no-content-leak",
            "character-structural-complexity-low-noise",
            "functional-sect-environment",
            "contained-sword-vfx-keyframe"
        )) {
            if (-not $conceptIds.ContainsKey($requiredId)) {
                $failures.Add("Missing required concept regression case: $requiredId")
            }
        }
    }
    catch {
        $failures.Add("Invalid concept eval JSON: $($_.Exception.Message)")
    }
}

$agentFiles = @(
    "orchestrate-creative-production\agents\openai.yaml",
    "film-prompt-producer\agents\openai.yaml",
    (([char]0x65F6) + ([char]0x957F) + ".skill\agents\openai.yaml")
)

$strictUtf8 = [System.Text.UTF8Encoding]::new($false, $true)
foreach ($relative in $agentFiles) {
    $path = Join-Path $SkillRoot $relative
    if (-not (Test-Path -LiteralPath $path)) {
        $failures.Add("Missing agent metadata: $relative")
        continue
    }
    try {
        [void]$strictUtf8.GetString([System.IO.File]::ReadAllBytes($path))
    }
    catch {
        $failures.Add("Invalid UTF-8 agent metadata: $relative")
    }
    Require-Text $path 'default_prompt:\s+"[^"]*\$[^"]+"' "explicit skill name in default prompt"
}

$evalPath = Join-Path $producer "evals\cases.json"
if (-not (Test-Path -LiteralPath $evalPath)) {
    $failures.Add("Missing eval cases")
}
else {
    try {
        $cases = Get-Content -LiteralPath $evalPath -Raw -Encoding UTF8 | ConvertFrom-Json
        if ($cases.Count -lt 10) {
            $failures.Add("Expected at least 10 eval cases")
        }
        foreach ($case in $cases) {
            foreach ($field in @("id", "input", "mode", "must_lock", "must_not")) {
                if ($null -eq $case.$field) {
                    $failures.Add("Eval case missing $field")
                }
            }
            if ($case.mode -notin @("stable", "director")) {
                $failures.Add("Invalid eval mode in $($case.id)")
            }
        }
    }
    catch {
        $failures.Add("Invalid eval JSON: $($_.Exception.Message)")
    }
}

$routingPath = Join-Path $producer "evals\routing-cases.json"
if (-not (Test-Path -LiteralPath $routingPath)) {
    $failures.Add("Missing routing eval cases")
}
else {
    try {
        $routingCases = Get-Content -LiteralPath $routingPath -Raw -Encoding UTF8 | ConvertFrom-Json
        if ($routingCases.Count -lt 12) {
            $failures.Add("Expected at least 12 routing eval cases")
        }
        $routingIds = @{}
        $routingPrimary = @{}
        foreach ($case in $routingCases) {
            foreach ($field in @("id", "input", "primary", "allowed_secondary", "forbidden_primary")) {
                if ($null -eq $case.$field) {
                    $failures.Add("Routing case missing $field")
                }
            }
            if ($routingIds.ContainsKey($case.id)) {
                $failures.Add("Duplicate routing case id: $($case.id)")
            }
            else {
                $routingIds[$case.id] = $true
                $routingPrimary[$case.id] = $case.primary
            }
            if ($case.forbidden_primary -contains $case.primary) {
                $failures.Add("Routing case forbids its own primary: $($case.id)")
            }
        }
        $requiredConceptRoutes = @{
            "character-concept-only" = "character-design"
            "environment-concept-only" = "environment-concept-design"
            "multi-department-static-concept" = "film-prompt-producer"
            "static-vfx-concept-only" = "vfx-prompt-designer"
        }
        foreach ($routeId in $requiredConceptRoutes.Keys) {
            if (-not $routingPrimary.ContainsKey($routeId)) {
                $failures.Add("Missing required concept route: $routeId")
            }
            elseif ($routingPrimary[$routeId] -ne $requiredConceptRoutes[$routeId]) {
                $failures.Add("Unexpected primary for ${routeId}: $($routingPrimary[$routeId])")
            }
        }
    }
    catch {
        $failures.Add("Invalid routing eval JSON: $($_.Exception.Message)")
    }
}

if ($failures.Count -gt 0) {
    $failures | ForEach-Object { Write-Error $_ }
    exit 1
}

Write-Output "Film skill contracts are valid."
exit 0
