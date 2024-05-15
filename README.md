# ACA_2024_Flutter-Fusion
This repo consists of all the components involved in the project Flutter Fusion
Sure! Here is a list of basic Git commands that cover the essential functions for working with Git repositories:

Configuration
git config --global user.name "Your Name": Sets the name that will be attached to your commits.

git config --global user.email "your.email@example.com": Sets the email that will be attached to your commits.

git config --list: Lists all the Git configuration settings.

Getting and Creating Projects
git init: Initializes a new Git repository.

git clone : Clones an existing repository from a URL.

Basic Snapshotting
git add : Adds a file to the staging area.

git add .: Adds all files in the current directory to the staging area.

git status: Shows the status of changes as untracked, modified, or staged.

git commit -m "commit message": Commits the staged snapshot with a message.

git commit -a -m "commit message": Commits all modified tracked files with a message.

git diff: Shows the differences between the working directory and the staging area.

git diff --staged: Shows the differences between the staging area and the last commit.

Branching and Merging
git branch: Lists all the branches in the repository.

git branch : Creates a new branch.

git checkout : Switches to the specified branch.

git checkout -b : Creates and switches to a new branch.

git merge : Merges the specified branch into the current branch.

git branch -d : Deletes the specified branch.

Sharing and Updating Projects
git remote add origin : Adds a remote repository.

git remote -v: Shows the URLs of the remote repositories.

git push origin : Pushes the specified branch to the remote repository.

git pull: Fetches and integrates changes from the remote repository to the current branch.

Inspection and Comparison
git log: Shows the commit history.

git log --oneline: Shows the commit history in a compact format.

git show : Shows the details and changes of a specific commit.

git diff : Shows the differences between two commits. git diff : Shows the differences between two branches.

Undoing Changes
git reset : Removes the file from the staging area but keeps the changes in the working directory. git reset --hard: Resets the working directory and staging area to match the last commit, discarding all changes. git revert : Creates a new commit that undoes the changes from a specific commit.
