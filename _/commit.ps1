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
    for ($i = 0; $i -lt $Times; $i++) {
        Write-Color "Flash!" "Yellow" "Black"
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
    for ($i = 0; $i -lt $Times; $i++) {
        Write-Color "Boom!" "Red" "Black"
        Start-Sleep -Milliseconds 200
    }
}

# Check the status of the repository
Write-Color "Checking Git status..." "Yellow" "Black"
git status

# Run an ls -Recurse with color effects
Write-Color "Running ls -Recurse..." "Cyan" "Black"
ls -Recurse

# Stage all changes
Write-Color "Staging all changes..." "Green" "Black"
git add .

# Run an ls -Recurse with color effects
Write-Color "Running ls -Recurse again..." "Cyan" "Black"
ls -Recurse

# Confirm staging
Write-Color "Confirming staging..." "Yellow" "Black"
git status

# Run an ls -Recurse with color effects
Write-Color "Running ls -Recurse again..." "Cyan" "Black"
ls -Recurse

# Generate a recursive directory listing and save to CONTENTS.md in the parent directory
Write-Color "Generating CONTENTS.md..." "Magenta" "Black"
ls -Recurse > ../CONTENTS.md

# Run an ls -Recurse with color effects
Write-Color "Running ls -Recurse again..." "Cyan" "Black"
ls -Recurse

# Check the status again
Write-Color "Checking Git status again..." "Yellow" "Black"
git status

# Run an ls -Recurse with color effects
Write-Color "Running ls -Recurse again..." "Cyan" "Black"
ls -Recurse

# Stage the CONTENTS.md file
Write-Color "Staging CONTENTS.md..." "Green" "Black"
git add ../CONTENTS.md

# Run an ls -Recurse with color effects
Write-Color "Running ls -Recurse again..." "Cyan" "Black"
ls -Recurse

# Confirm staging of CONTENTS.md
Write-Color "Confirming staging of CONTENTS.md..." "Yellow" "Black"
git status

# Run an ls -Recurse with color effects
Write-Color "Running ls -Recurse again..." "Cyan" "Black"
ls -Recurse

# Commit the changes with a message
Write-Color "Committing changes with message 'here we go'..." "Blue" "Black"
git commit -m "here we go"

# Run an ls -Recurse with color effects
Write-Color "Running ls -Recurse again..." "Cyan" "Black"
ls -Recurse

# Push the changes forcefully
Write-Color "Pushing changes forcefully..." "Red" "Black"
git push -f

# Run an ls -Recurse with color effects
Write-Color "Running ls -Recurse again..." "Cyan" "Black"
ls -Recurse

# Final status check
Write-Color "Final Git status check..." "Yellow" "Black"
git status

# Add some terminal effects for fun
Flash -Times 3
Explosion -Times 3
