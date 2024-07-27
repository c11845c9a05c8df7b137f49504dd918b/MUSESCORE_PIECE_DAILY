# Function to add color effects
function Write-Color {
    param (
        [string]$Text,
        [ConsoleColor]$Color
    )
    Write-Host $Text -ForegroundColor $Color
}

# Function to create flashing effects
function Flash {
    param (
        [int]$Times
    )
    for ($i = 0; $i -lt $Times; $i++) {
        Write-Host "Flash!" -ForegroundColor Yellow -NoNewline
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
        Write-Color "Boom!" "Red"
        Start-Sleep -Milliseconds 200
    }
}

# Check the status of the repository
Write-Color "Checking Git status..." "Yellow"
git status

# Run an ls -Recurse with color effects
Write-Color "Running ls -Recurse..." "Cyan"
ls -Recurse

# Stage all changes
Write-Color "Staging all changes..." "Green"
git add .

# Run an ls -Recurse with color effects
Write-Color "Running ls -Recurse again..." "Cyan"
ls -Recurse

# Confirm staging
Write-Color "Confirming staging..." "Yellow"
git status

# Run an ls -Recurse with color effects
Write-Color "Running ls -Recurse again..." "Cyan"
ls -Recurse

# Generate a recursive directory listing and save to CONTENTS.md in the parent directory
Write-Color "Generating CONTENTS.md..." "Magenta"
ls -Recurse > ../CONTENTS.md

# Run an ls -Recurse with color effects
Write-Color "Running ls -Recurse again..." "Cyan"
ls -Recurse

# Check the status again
Write-Color "Checking Git status again..." "Yellow"
git status

# Run an ls -Recurse with color effects
Write-Color "Running ls -Recurse again..." "Cyan"
ls -Recurse

# Stage the CONTENTS.md file
Write-Color "Staging CONTENTS.md..." "Green"
git add ../CONTENTS.md

# Run an ls -Recurse with color effects
Write-Color "Running ls -Recurse again..." "Cyan"
ls -Recurse

# Confirm staging of CONTENTS.md
Write-Color "Confirming staging of CONTENTS.md..." "Yellow"
git status

# Run an ls -Recurse with color effects
Write-Color "Running ls -Recurse again..." "Cyan"
ls -Recurse

# Commit the changes with a message
Write-Color "Committing changes with message 'here we go'..." "Blue"
git commit -m "here we go"

# Run an ls -Recurse with color effects
Write-Color "Running ls -Recurse again..." "Cyan"
ls -Recurse

# Push the changes forcefully
Write-Color "Pushing changes forcefully..." "Red"
git push -f

# Run an ls -Recurse with color effects
Write-Color "Running ls -Recurse again..." "Cyan"
ls -Recurse

# Final status check
Write-Color "Final Git status check..." "Yellow"
git status

# Add some terminal effects for fun
Flash -Times 3
Explosion -Times 3
