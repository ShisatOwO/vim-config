import sys, os
import time
import requests
import subprocess
import shutil
from pathlib import Path


def download_file(url: str, location: str):
    with requests.get(url=url, stream=True) as s:
        s.raise_for_status()
        with open(location, 'wb') as f:
            for chunk in s.iter_content(chunk_size=8192): 
                f.write(chunk)



def install():
    ALACRITTY_URL = "https://github.com/alacritty/alacritty/releases/download/v0.10.0/Alacritty-v0.10.0-installer.msi"
    MSYS2_URL = "https://github.com/msys2/msys2-installer/releases/download/2022-09-04/msys2-x86_64-20220904.exe"
    NVIM_URL = "https://github.com/neovim/neovim/releases/download/v0.8.0/nvim-win64.msi"
    ALACRITTY_EXE = "alacritty-installer.msi"
    MSYS2_EXE = "msys2-installer.exe"
    NVIM_EXE = "nvim-installer.msi"

    os.makedirs("win-nvim-setup/bin", exist_ok=True)
    bin_dir = Path("win-nvim-setup/bin")

    alacritty = bin_dir / Path(ALACRITTY_EXE)
    msys2 = bin_dir / Path(MSYS2_EXE)
    nvim = bin_dir / Path(NVIM_EXE)
    
    print("Downloading Terminal Emulator, please wait (Filesize: ~4mb)")
    download_file(ALACRITTY_URL, alacritty)

    print("Downloading Neovim, please wait (Filesize: ~40mb)")
    download_file(NVIM_URL, nvim)
    
    print("Downloading Msys2 Installer, please wait (Filesize: ~82mb)")
    download_file(MSYS2_URL, msys2)
    
    print("\nYou will now be asked to install Mysys2, Alacritty and Neovim.\n"
          "Please do not change the default installation paths and dont run Msys2 at the end of the installation...")

    while (inp := input("\nPlease type \"ok\" if you understood that. Type \"abort\" to exit: ")) != "ok":
        if inp == "abort":
            print("Aborting!")
            sys.exit()

    print("Beginning Installation...")

    subprocess.run(msys2)
    print("Installed Msys2")
    subprocess.run(f"msiexec /package {nvim}")
    print("Installed Neovim")
    subprocess.run(f"msiexec /package {alacritty}")

    print("Installing config")
    try:
        shutil.copytree("win-nvim-setup/config/alacritty", Path("~/AppData/Roaming/alacritty").expanduser())
    except FileExistsError:
        print("Found existing Alacritty config. Wont override")
        pass
    try:
        os.makedirs(Path("~/AppData/Local/nvim").expanduser(), exist_ok=True)
        shutil.copy2("init.lua", Path("~/AppData/Local/nvim/init.lua").expanduser())
        shutil.copytree("lua", Path("~/AppData/Local/nvim/lua").expanduser())
    except FileExistsError:
        print("Found existing Neovim config. Wont override")
        pass

    while input("Please type \"done\" if you have finished the setup for Msys2, Alacritty and Neovim: ") != "done":
        pass

    print("Installing gcc")
    subprocess.run("C:\msys64\mingw64.exe pacman --needed --noconfirm -S mingw-w64-x86_64-gcc")

    if "C:\msys64\mingw64\\bin" not in os.environ["path"]:
        subprocess.run(f'setx path "{os.environ["path"]};C:\msys64\mingw64\\bin;"')

    print("Tried to append gcc location to Path. If you are seeing errors regarding gcc appending it manually")
    input("Done, please start and restart nvim now. Seeing errors while starting nvim for the first time is normal. Press Enter to Finish.")

if __name__ == "__main__":
    install()
