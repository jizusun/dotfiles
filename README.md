# My dotfiles managed by [`Chezmoi`](https://www.chezmoi.io/)

- [Using BitWarden and Chezmoi to manage SSH keys](https://www.notion.so/Using-BitWarden-and-Chezmoi-to-manage-SSH-keys-8b6060383dd14471936639811a29ab26)
- [Take back your dotfiles with Chezmoi - Fedora Magazine](https://fedoramagazine.org/take-back-your-dotfiles-with-chezmoi/)
- [webpro/awesome-dotfiles](https://github.com/webpro/awesome-dotfiles)
- [ Introduction to Dotfiles ](https://dev.to/jogendra/intro-to-dotfiles-4bb8)
- [Personalizing Codespaces for your account](https://docs.github.com/en/codespaces/setting-up-your-codespace/personalizing-codespaces-for-your-account)
- [https://wiki.archlinux.org/index.php/Dotfiles](https://wiki.archlinux.org/index.php/Dotfiles)
- [Managing dotfiles and secret with chezmoi](https://blog.arkey.fr/2020/04/01/manage_dotfiles_with_chezmoi/)
- [erebe/personal-server](https://github.com/erebe/personal-server#provider)
## Usage

### To fix `brew`
- [Homebrew Multi User Setup](https://medium.com/@leifhanack/homebrew-multi-user-setup-e10cb5849d590w)

```sh
sudo chmod -R g+w $(brew --prefix)
sudo chmod -R g+w $(brew --prefix)/*
```

### Bootstrap

```sh
sh -c "$(curl -fsLS git.io/chezmoi)"
mv ./bin/chezmoi /usr/local/bin/chezmoi
chezmoi init https://github.com/jizusun/dotfiles.git
chezmoi edit-config
```
with content

```
[data]
    email = "xxx@email.com"
    name = "My name"

encryption = "age"
[age]
    identity = "/home/jizu/key.txt"
    recipient = "age1....."
```
And install with

```
pacman -S age
```

- [Encrypt whole files with age](https://www.chezmoi.io/docs/how-to/#encrypt-whole-files-with-age)
- [github.com - age](https://github.com/FiloSottile/age)


Also 
```
brew tap filippo.io/age https://filippo.io/age
brew install age
brew install bitwarden-cli
chezmoi -v apply
brew bundle --file ~/Brewfile -v

bw config server https://self-hosted-bitwarden.com
bw unlock

chezmoi apply --verbose --destination $HOME/tmphome --dry-run
```

