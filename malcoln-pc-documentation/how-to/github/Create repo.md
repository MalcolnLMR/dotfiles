
## Install dependencies
`sudo pacman -S git github-cli

## Create local repository

1. `git init` 
2. `touch README.md` - create a readme file
3. `git add README.md`
4. `git commit -m "first commit"`

## Create remote repository

### Using GitHub CLI

1. `gh auth login` - to login into your account
2. ```bash 
   gh repo create my-project --public --source=. --remote=upstream 
   ```
## Push to origin
```bash
git push --set-upstream upstream master
```
