# Function to add color effects with background
function Write-Color {
    param (
        [string]$Text,
        [ConsoleColor]$ForegroundColor,
        [ConsoleColor]$BackgroundColor
    )
    Write-Host $Text -ForegroundColor $ForegroundColor -BackgroundColor $BackgroundColor
}

# Function to create flashing effects
function Flash {
    param (
        [int]$Times
    )
    $backgroundColors = [System.Enum]::GetValues([ConsoleColor])
    for ($i = 0; $i -lt $Times; $i++) {
        $randomColor = $backgroundColors | Get-Random
        Write-Host "Flash!" -ForegroundColor Yellow -BackgroundColor $randomColor -NoNewline
        Start-Sleep -Milliseconds 100
        Write-Host "`r" -NoNewline
        Start-Sleep -Milliseconds 100
    }
    Write-Host "`n"
}

# Function to simulate explosions
function Explosion {
    param (
        [int]$Times
    )
    $backgroundColors = [System.Enum]::GetValues([ConsoleColor])
    for ($i = 0; $i -lt $Times; $i++) {
        $randomColor = $backgroundColors | Get-Random
        Write-Color "Boom!" "Red" $randomColor
        Start-Sleep -Milliseconds 200
        Clear-Host
    }
}

# Function to change background color in a crazy way
function CrazyBackground {
    $backgroundColors = [System.Enum]::GetValues([ConsoleColor])
    $randomColor = $backgroundColors | Get-Random
    [console]::BackgroundColor = $randomColor
    [console]::Clear()
}

# Function to check the status of the repository
function Check-GitStatus {
    CrazyBackground
    Write-Color "Checking Git status..." "Yellow" "Black"
    git status
}

# Function to run ls -Recurse
function Run-LsRecurse {
    CrazyBackground
    Write-Color "Running ls -Recurse..." "Cyan" "Black"
    ls -Recurse
}

# Function to stage all changes
function Stage-AllChanges {
    CrazyBackground
    Write-Color "Staging all changes..." "Green" "Black"
    git add .
}

# Function to generate CONTENTS.md
function Generate-Contents {
    CrazyBackground
    Write-Color "Generating CONTENTS.md..." "Magenta" "Black"
    ls -Recurse > ../CONTENTS.md
}

# Function to stage CONTENTS.md
function Stage-Contents {
    CrazyBackground
    Write-Color "Staging CONTENTS.md..." "Green" "Black"
    git add ../CONTENTS.md
}

# Function to commit changes
function Commit-Changes {
    CrazyBackground
    Write-Color "Committing changes with message 'here we go'..." "Blue" "Black"
    git commit -m "here we go"
}

# Function to push changes
function Push-Changes {
    CrazyBackground
    Write-Color "Pushing changes forcefully..." "Red" "Black"
    git push -f
}

# Add some terminal effects for fun
function Terminal-Effects {
    Flash -Times 3
    Explosion -Times 3
}

# Main function to orchestrate the workflow
function Main {
    $steps = @(
        "Check-GitStatus",
        "Run-LsRecurse",
        "Stage-AllChanges",
        "Run-LsRecurse",
        "Check-GitStatus",
        "Run-LsRecurse",
        "Generate-Contents",
        "Run-LsRecurse",
        "Check-GitStatus",
        "Run-LsRecurse",
        "Stage-Contents",
        "Run-LsRecurse",
        "Check-GitStatus",
        "Run-LsRecurse",
        "Commit-Changes",
        "Run-LsRecurse",
        "Push-Changes",
        "Run-LsRecurse",
        "Check-GitStatus"
    )

    $orderedSteps = $steps | Get-Random -Count $steps.Count

    foreach ($step in $orderedSteps) {
        Invoke-Expression $step
    }

    Terminal-Effects
}

# Run the main function
Main
