# ACA_2024_Flutter-Fusion
This repo consists of all the components involved in the project Flutter Fusion
 
### Setup Git
1. First check if Git is already installed. In the terminal / command prompt type: 
  <pre><code>git --version</code></pre>
2. If Git is not installed, <a href="https://git-scm.com/downloads">download Git</a>.
3. Set up your local Git profile in the terminal:
<pre><code>git config --global user.name "your-name"
git config --global user.email "your-email"</code></pre>
4. To check if Git is correctly configured you can type: <code>git config --list</code>

### Setup Project
1. Fork the repository.
2. Clone the repository. In your terminal, type:
  <pre><code>git clone https://github.com/your-username/ACA_2024_Flutter-Fusion.git</code></pre>
3. Navigate to the repository directory : <code>cd Intro-to-ML-and-DL</code>
4. Set up a remote connection to the original repository
   <code>git remote add upstream  </https://github.com/SAVG10/ACA_2024_Flutter-Fusion
5. Verify that the remote connection : <code>git remote -v</code>. You would see two remote connections: origin (pointing to your forked repository) and upstream (pointing to the original repository).

### Uploading Files
Mentees are required to upload their solutions to assignments within the respective deadlines. To upload files, they may either use Github or the following command lines:
1. Stage the files for commit using the <code>git add </code>command. <code>git add filename1 filename2</code> for specific files and <code>git add . </code> for all files.
2. Verify the files to be modified using : <code>git status</code> command.
3. Use <code>git reset filename</code> to prevent a file from getting staged. Or include the filename in the .gitignore file.
4. Commit the files using the <code>git commit</code> command. <code>git commit -m "Commit message" </code>.
5. Push the files into your main branch/ other branches. <code>git push origin main</code>
6. When you add files for the first time, create a pull request using Github.

### Happy Coding!!!
