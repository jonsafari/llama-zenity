#!/bin/sh
# By Jon Dehdari, 2025
# Simple GUI to invoke Llama-server
# For example, you can create a desktop icon that invokes the command: /home/User/src/llama-zenity/llama-zenity.sh '/home/User/src/llama.cpp/build/bin/'

PATH=$PATH:$1
MODEL_DIR=$HOME/models/
HOST='localhost'
PORT='8080'

GGUF_FILE=$(zenity --title='Select GGUF Model File' --text 'Select GGUF Model File' --file-selection --filename="$MODEL_DIR"  --file-filter='*.gguf') || exit
MMProj_FILE=$(zenity --title='Select Optional Multimodel MMProj File' --text 'Select Optional Multimodel MMProj File' --file-selection --filename="$MODEL_DIR"  --file-filter='*mmproj* gguf')
TEMP=$(zenity --title='Select Temperature' --text 'Select Temperature (0 is more deterministic and less creative)' --entry --entry-text=0.0) || exit
NGL=$(zenity --title='Select Number of GPU Layers' --text 'Select Number of GPU Layers (0 if you have no GPU)' --scale --value=65 --min-value=0 --max-value=100) || exit

path_to_llama_server=$(which llama-server)
if ! [ -x "$path_to_llama_server" ]; then
	path_to_llama_server=$(zenity --title='Select Llama-server Path' --text 'Select Llama-server Path. You should probably add this to your $PATH'  --file-selection)
fi

CMD_ARGS="-ngl $NGL --temp $TEMP --model $GGUF_FILE --host ${HOST} --port ${PORT}"" ${MMProj_FILE:+ --mmproj $MMProj_FILE}"

open http://${HOST}:${PORT}
set -x
$path_to_llama_server ${CMD_ARGS}
