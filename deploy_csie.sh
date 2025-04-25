#!/bin/bash
set -e

# # Update local repository
# if [ "$1" == "--reset" ]; then
#     git fetch --all
#     git reset --hard origin/main
# else
#     git fetch --all
# fi

# Define variables
REPO="pha123661/homepage"  # Replace with your GitHub username and repository name
ASSET_NAME="htdocs.zip"

# Fetch the download URL for the latest release asset
DOWNLOAD_URL=$(curl -s https://api.github.com/repos/$REPO/releases/latest | \
    grep "browser_download_url" | \
    grep "$ASSET_NAME" | \
    cut -d '"' -f 4)

# Download the asset
curl -L -o "$ASSET_NAME" "$DOWNLOAD_URL"

# Clean the deployment directory
rm -rf ~/htdocs || true

# Extract the downloaded zip file
unzip -o "$ASSET_NAME" -d ~

# Remove the downloaded zip file
rm "$ASSET_NAME"

echo "Deployment completed to ~/htdocs"
