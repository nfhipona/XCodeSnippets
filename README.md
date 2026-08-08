# XCodeSnippets

My collection code snippet for iOS development that I invented for my use case. If you find it useful for yourself feel free to fork and modify to better suit your needs.

# Usage

1. Run `setup.sh`.
This will check for current user's xcode snippets. If current user's snippet exists, it will be copied and backed up to directory `$ROOT/CodeSnippets` where this scripts lives.
This will will remove and create a folder`~/Library/Developer/Xcode/UserData/CodeSnippets` and a SymLink will be created to your user path `/Users/$USER/Library/Developer/Xcode/UserData/CodeSnippets` -> `$ROOT/CodeSnippets`.
Ex. `/Users/nfhipona/Library/Developer/Xcode/UserData/CodeSnippets` -> `XCodeSnippets/CodeSnippets`

2. Exit or relaunch XCode if it was open when the script `setup.sh` was run.
This will allow XCode to reload snippets found in directory `~/Library/Developer/Xcode/UserData/CodeSnippets`.
The directory `~/Library/Developer/Xcode/UserData/CodeSnippets` is the default path for XCode snippets.

3. You can start configuring the script with your custom settings so it would work based on your needs.
Ex. checkout `git` folder which contains git helper commands that needs modification before usage.

4. You can add and modify the scripts from your `XCodeSnippets`.
Update `$ROOT/CodeSnippets` and add your custom snippets so you can add it to your git.
Make sure to rerun `setup.sh` if you manually add code snippet files to this folder `$ROOT/CodeSnippets` and relaunch XCode.

# Screenshots

### Setup

<details>
  <summary>View</summary>
  <img width="1505" height="549" alt="Screenshot 2026-08-09 at 02 42 35" src="https://github.com/user-attachments/assets/9d3449a8-39d5-47be-ab9e-bc33adc72bc5" />
  <img width="1791" height="752" alt="Screenshot 2026-08-09 at 02 43 19" src="https://github.com/user-attachments/assets/2c1defe7-f02e-42d1-bc2a-f4a5d742ce5c" />
</details>

### Others

<details>
  <summary>View</summary>
  <img width="1556" height="701" alt="Screenshot 2026-08-09 at 02 19 09" src="https://github.com/user-attachments/assets/eb952161-de43-46f2-90ab-85f62d32d654" />
</details>
