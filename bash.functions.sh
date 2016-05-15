# Make a nice, coloured prompt
# USAGE: build_prompt <colour_num>
# i.e. build_prompt 31 (red)
build_prompt () {
    BASE="\e[0;"
    HEAD="m[\u@\h, load: `cat /proc/loadavg | awk '{ print $1; }'`%]\e[0;97m \w \$ "
    FINAL=$BASE$1$HEAD
    PS1=$FINAL
}

# Find a file in a folder
# USAGE: where <folder> <filename>
# i.e. where ~/Desktop my_file.php
where () {
    find "$1" -xdev -name "$2"
}
