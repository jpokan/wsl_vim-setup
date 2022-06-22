### Initial Setup

This is my small guide to setup vim, run from the Windows Subsystem for Linux (WSL)

System details:

- WSL Ubuntu 22.04
- Windows 10
- Windows Terminal Version: 1.13.11431.0

What's nedded?
- Starship terminal
- Nvm
- Node.js
- Yarn
- Vim-plug

#### Installation instructions

Run these steps after a clean instalation of the WSL

Open the windows terminal, make sure you're using the Ubuntu-22.04 profile.

Copy these files and folders into the home directory

```
.vim/
.config/
.bashrc
.vimrc
```

1. Install starship:

```
curl -sS https://starship.rs/install.sh | sh
```

2. Install nvm

```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
```

3. Restart terminal

4. Install node

```
nvm install stable
```

5. Install yarn

```
npm install -g yarn
```

6. Install vim-plug

```
~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

7. At this point you can open vim, you might see some errors because the .vimrc file has has not been configured yet. To fix this run

```
:PlugInstall
```

8. After this, you should have everything setup. Restart Vim!.

Enjoy my configuration :D

Made by Jpokan

