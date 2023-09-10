#! /bin/bash

folder_path="/home/shipu/Wallpapers"
file_list=("$folder_path"/*)

num_files=${#file_list[@]}
random_index=$(( RANDOM % num_files ))

random_file="${file_list[random_index]}"

#echo "Randomly selected file: $random_file"
#gm convert "$random_image" -fill "#000"   jpg:-

DISPLAY=:0.0 feh --bg-fill $random_file;
