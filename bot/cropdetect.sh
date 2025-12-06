ffmpeg -i $1 -vf fps=2,cropdetect=16:2:0 -f null - 2>&1|awk '/crop/{print $NF}'|tail -n1| cut -d ':' -f 3,4
