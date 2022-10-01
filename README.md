# Catppuccin
This readme describes the installation and usage of my Catppuccin Neovim Config.
Highlights and complompletions are supported for Python, Rust, Java, Toml and Json out of the Box.


## Installation
### Requirements
* A working [Neovim](https://neovim.io/) Installation.
* git
* Your Terminal's font should be set to a NERDfont. I recommend [Fira Code Nerd Font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FiraCode)
* Npm (Used by Treesitter to install parsers) (optinal)
* A CXX compiler (Used by Treesitter to compile parsers) (optional)

### Auto Installation
  * Linux:
    ```
    cd ~ && git clone https://github.com/ShisatOwO/vim-config && mkdir -p .config/nvim && cp -r vim-config/* .config/nvim && nvim
    ```
     * Nvim will be started automatically
       > Note: You will get errors, this is normal.
     * Press `Enter` repeatedly to skip trough the errors and finally press `Enter and then "q"` to close the floating plugin window. Now close nvim by Pressing `ESC` and than entering `:q!`
     * You are now done. Start nvim again and you should have a working config.
  * Windows:
    * Clone this repository 
    * Install the fonts located in `fonts`
    * Open a terminal and navigate to the root of this repository, execute:
      `python win-nvim-setup`
      or
      `py win-nvim-setup`
    * Follow the onscreen insctructions. This will also install Neovim, Alacritty and  Msys2. If you have already installed one of these 3 just close the respective installer. After the installation is finished, open alacritty (press the windows key and search for Alacritty) and execute `nvim`. After nvim has installed all plugins, close it by pressing `ESC` and then entering `:q!`. Seeing errors during this first run is normal. Start `nvim` again. There shouldnt be any errors now and the config should be applied.
<hr>

### Manual Installation

* Locate your Neovim configuration folder. On linux its located at
  ```
  ~/.config/nvim
  ```
  > Note: You might have to create it youself, if it does not exist.
* Clone this repository or Download it as a .zip
  #### Cloning
  ```
  git clone https://github.com/ShisatOwO/vim-config
  ```
  #### Download
  [Download](https://github.com/ShisatOwO/vim-config/archive/refs/heads/master.zip)
  > Note: After the download finishes you have to extract the .zip file. This is not neccesarry if you cloned the repo.

* Copy init.lua and the lua folder into your Neovim config folder.
  Make sure your Neovim config folder contains at least these files:
  ```
  ├── init.lua
  ├── lua
  │   └── catppuccin
  │       ├── autopair.lua
  │       ├── catppuccin.lua
  │       ├── colors.lua
  │       ├── completion.lua
  │       ├── lsp
  │       │   ├── handlers.lua
  │       │   ├── init.lua
  │       │   └── lsp-installer.lua
  │       ├── options.lua
  │       ├── plugins.lua
  │       ├── shortcuts.lua
  │       ├── sidebar.lua
  │       └── treesitter.lua

  ```
 * Start nvim by executing `nvim`
   > Note: You will get errors, this is normal.
 * Press `Enter` repeatedly to skip trough the errors and fianlly press `Enter and then "q"` to close the floating plugin window. Now close nvim by Pressing `ESC` and than entering `:q!`
 * You are now done. Start nvim again and you should have a working config.
