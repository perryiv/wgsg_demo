# Start at the top directory of the git repository.
cd "$(git rev-parse --show-toplevel)"

# Change to the wgsg app directory.
cd ../wgsg/app

# Run the build script.
yarn run build

# Return to the top directory of the git repository.
cd "$(git rev-parse --show-toplevel)"

# Remove and recreate the docs directory.
rm -rf docs
mkdir docs

# Move the built files from the app directory to the docs directory.
mv ../wgsg/app/dist/* docs/

# We're done with the app dist directory, which should now be empty.
rm -rf ../wgsg/app/dist
