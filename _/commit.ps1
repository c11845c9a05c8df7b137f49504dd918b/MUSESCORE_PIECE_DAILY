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
        Write-Host "`e[5m Flash! `e[0m" -ForegroundColor Yellow -BackgroundColor $randomColor
        Start-Sleep -Milliseconds 100
        Clear-Host
    }
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

# Check the status of the repository
CrazyBackground
Write-Color "Checking Git status..." "Yellow" "Black"
git status

# Run an ls -Recurse with color effects
CrazyBackground
Write-Color "Running ls -Recurse..." "Cyan" "Black"
ls -Recurse

# Stage all changes
CrazyBackground
Write-Color "Staging all changes..." "Green" "Black"
git add .

# Run an ls -Recurse with color effects
CrazyBackground
Write-Color "Running ls -Recurse again..." "Cyan" "Black"
ls -Recurse

# Confirm staging
CrazyBackground
Write-Color "Confirming staging..." "Yellow" "Black"
git status

# Run an ls -Recurse with color effects
CrazyBackground
Write-Color "Running ls -Recurse again..." "Cyan" "Black"
ls -Recurse

# Generate a recursive directory listing and save to CONTENTS.md in the parent directory
CrazyBackground
Write-Color "Generating CONTENTS.md..." "Magenta" "Black"
ls -Recurse > ../CONTENTS.md

# Run an ls -Recurse with color effects
CrazyBackground
Write-Color "Running ls -Recurse again..." "Cyan" "Black"
ls -Recurse

# Check the status again
CrazyBackground
Write-Color "Checking Git status again..." "Yellow" "Black"
git status

# Run an ls -Recurse with color effects
CrazyBackground
Write-Color "Running ls -Recurse again..." "Cyan" "Black"
ls -Recurse

# Stage the CONTENTS.md file
CrazyBackground
Write-Color "Staging CONTENTS.md..." "Green" "Black"
git add ../CONTENTS.md

# Run an ls -Recurse with color effects
CrazyBackground
Write-Color "Running ls -Recurse again..." "Cyan" "Black"
ls -Recurse

# Confirm staging of CONTENTS.md
CrazyBackground
Write-Color "Confirming staging of CONTENTS.md..." "Yellow" "Black"
git status

# Run an ls -Recurse with color effects
CrazyBackground
Write-Color "Running ls -Recurse again..." "Cyan" "Black"
ls -Recurse

# Commit the changes with a message
CrazyBackground
Write-Color "Committing changes with message 'here we go'..." "Blue" "Black"
git commit -m "here we go"

# Run an ls -Recurse with color effects
CrazyBackground
Write-Color "Running ls -Recurse again..." "Cyan" "Black"
ls -Recurse

# Push the changes forcefully
CrazyBackground
Write-Color "Pushing changes forcefully..." "Red" "Black"
git push -f

# Run an ls -Recurse with color effects
CrazyBackground
Write-Color "Running ls -Recurse again..." "Cyan" "Black"
ls -Recurse

# Final status check
CrazyBackground
Write-Color "Final Git status check..." "Yellow" "Black"
git status

# Add some terminal effects for fun
Flash -Times 3
Explosion -Times 3
