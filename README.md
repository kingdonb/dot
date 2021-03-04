Kingdon's dotfiles

```
apk add git
cd
git init
git remote add origin https://github.com/kingdonb/dot.git
rm .bashrc && git pull origin alpine-dotfiles && git co alpine-dotfiles
bash --login
```

- `.profile`
- `.gitconfig`
- `.gitignore`
- `.bash_aliases`
- `.bash_git`
- `README.md` - you're reading this
