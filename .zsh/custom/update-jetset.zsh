#!/bin/zsh

update_jetset() {
    # Navigate to the directory
    cd ~/Developer/spring-boot/jetset-demo || { echo "Error: Unable to change directory."; return 1; }

    # Get the current git branch
    current_branch=$(git rev-parse --abbrev-ref HEAD)

    # Check if the current branch is 'dev'
    if [ "$current_branch" != "dev" ]; then
        echo "Error: This script should only be run on the 'dev' branch. Check your jetset-demo branch is on 'dev'"
        return 1
    fi

    # Fetch the latest changes from the remote dev branch
    git fetch origin dev || { echo "Error: Unable to fetch latest changes from remote 'dev' branch."; return 1; }

    # Merge the fetched changes into the local dev branch
    git merge --ff-only origin/dev || { echo "Error: Unable to merge changes from remote 'dev' branch."; return 1; }

    # Command 1: git add .
    git add . || { echo "Error: Unable to 'git add'."; return 1; }

    # Command 2: git commit -m "update submodule jetset to latest"
    git commit -m "update submodule jetset to latest" || { echo "Error: Unable to commit."; return 1; }

    # Command 3: git push to safely push changes to remote 'dev' branch
    git push origin dev || { echo "Error: Unable to push changes to remote 'dev' branch."; return 1; }

    # Check if push was successful
    if [ $? -eq 0 ]; then
        echo "Success: Changes pushed successfully."
    else
        echo "Error: Something went wrong while pushing changes."
        return 1
    fi
}

alias update_jetset='update_jetset'

