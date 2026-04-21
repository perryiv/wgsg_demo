# Echo all commands to the terminal and exit on any error.
set -e -x

# Start one directory up from where this script is located.
cd "$(dirname "$0")/.."

# Save the full path of the current directory in a variable.
REPO_ROOT="$(pwd)"

# Change to the wgsg app directory.
cd ../wgsg/app

# Run the build script.
yarn run build

# Return to the original directory.
cd "$REPO_ROOT"

# Recreate the docs directory.
rm -rf docs
mkdir docs

# Move the built files to the docs directory.
mv ../wgsg/app/dist/* docs/

# Clean up the wgsg app directory.
rm -rf ../wgsg/app/dist
