# Echo all commands to the terminal and exit on any error.
set -e -x

# Commit and push everything.
git commit -a -m "Updated demo"
git push origin master
