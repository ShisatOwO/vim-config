# Catppuccin
This readme describes the installation and usage of my Catppuccin Neovim Config.
Highlighting and complompletion are supported for Python, Rust, Java, Toml and Json out of the Box.


## Installation
### Requirements
* A working [Neovim](https://neovim.io/) Installation.

### Auto Installation
  * Linux:
    ```
    pushd ~ && git clone https://github.com/ShisatOwO/vim-config && mkdir -p .config/nvim && cp -r vim-config/* .config/nvim && popd && nvim
    ```
     * Nvim will be started automatically
       > Note: You will get errors, this is normal.
     * Press `Enter` repeatedly to skip trough the errors and finally press `Enter and then "q"` to close the floating plugin window. Now close nvim by Pressing `ESC and than entering `:q!`
     * You are now done. Start nvim again and you should have a working config.
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
