# Echo all commands to the terminal and exit on any error.
set -e -x

# Start at one directory up from where this script is located.
cd "$(dirname "$0")/.."

# Save the full path of the current directory in avariable.
REPO_ROOT="$(pwd)"

# Change to the wgsg app directory.
cd ../wgsg/app

# Run the build script.
yarn run build

# Return to the original directory.
cd "$REPO_ROOT"

# Remove and recreate the docs directory.
rm -rf docs
mkdir docs

# Move the built files from the app directory to the docs directory.
mv ../wgsg/app/dist/* docs/

# We're done with the app dist directory, which should now be empty.
rm -rf ../wgsg/app/dist
