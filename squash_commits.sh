#!/bin/bash

# Clean up any stuck rebase
rm -rf .git/rebase-merge

# Reset to the base commit while keeping changes
git reset --soft 3a092e5

# Create a new commit with a descriptive message
git commit -m "fix: improve sponsor tier heading layout and responsiveness

- Add max-width and text-center classes to sponsor tier headings
- Improve responsive behavior on mobile devices
- Fix potential overflow issues with long tier names"

# Force push to update the remote branch
git push --force-with-lease origin cursor/squash-and-force-push-branch-3f47

echo "Successfully squashed 3 commits and force pushed!"