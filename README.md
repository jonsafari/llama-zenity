# Llama-Zenity: A Simple GUI to Invoke Llama-Server

[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)


## Overview

Llama-Zenity is a simple graphical interface to launch Llama-Server. It only asks which model you want to use, the temperature, and the number of GPU layers.


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



## Contributions
Contributions are welcome, via [pull requests][].


[Llama.cpp]: https://github.com/ggerganov/llama.cpp
[pull requests]: https://help.github.com/articles/creating-a-pull-request
