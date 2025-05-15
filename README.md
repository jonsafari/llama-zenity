# Llama-Zenity: A Minimal GUI to Launch Llama.cpp

<p align="center"> <img src="https://github.com/user-attachments/assets/56e09667-4f7c-4584-a312-1d79db10effb" /> </p>

[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)


## Overview

Llama-Zenity is a minimal graphical interface to launch Llama.cpp .  It works on Linux and MacOS, and maybe Windows.


## Linux Installation
### Dependencies
- Zenity: `sudo apt update  &&  sudo apt install zenity`
- [Llama.cpp][]: You should follow installation instructions on their website. I recommend installing into a directory called `src` under your home directory (i.e. `$HOME/src/llama.cpp/`).

### Install
1. Edit Llama-Zenity.desktop in the line Exec. Make sure your home directory is correct (probably not just `User`). Also make sure the paths to this repository and to the `llama.cpp` repository are correct.

      editor Llama-Zenity.desktop

2. I recommend storing your GGUF model files in directory called `models` under your home directory (i.e. `$HOME/models/`).  If you keep them somewhere else, you can modify `MODEL_DIR` in `llama-zenity.sh` .

      editor llama-zenity.sh

3. Copy Llama-Zenity.desktop to your desktop.

      cp Llama-Zenity.desktop $HOME/Desktop/

That's it! Now you can click on the desktop icon and start chatting away.


## MacOS Installation
### Dependencies
- Zenity: `brew install zenity`
- [Llama.cpp][]: You should follow installation instructions on their website. I recommend installing into a directory called `src` under your home directory (i.e. `$HOME/src/llama.cpp/`).

### Install
1. Edit the file Llama-Zenity.command . Make sure your home directory is correct (probably not just `user`). Also make sure the paths to this repository and to the `llama.cpp` repository are correct.

      open -t Llama-Zenity.command

2. I recommend storing your GGUF model files in directory called `models` under your home directory (i.e. `$HOME/models/`).  If you keep them somewhere else, you can modify `MODEL_DIR` in `llama-zenity.sh` .

      open -t llama-zenity.sh

3. Copy Llama-Zenity.command to your desktop.

      cp Llama-Zenity.command $HOME/Desktop/

That's it! Now you can click on the desktop icon and start chatting away. You can also drag the icon to the dock, right of the separator.



## Contributions
Contributions are welcome, via [pull requests][].


[Llama.cpp]: https://github.com/ggerganov/llama.cpp
[pull requests]: https://help.github.com/articles/creating-a-pull-request
