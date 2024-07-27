# Check the status of the repository
git status

# Stage all changes
git add .

# Confirm staging
git status

# Generate a recursive directory listing and save to CONTENTS.md in the parent directory
ls -Recurse > ../CONTENTS.md

# Check the status again
git status

# Stage the CONTENTS.md file
git add ../CONTENTS.md

# Confirm staging of CONTENTS.md
git status

# Commit the changes with a message
git commit -m "here we go"

# Push the changes forcefully
git push -f

# Final status check
git status
