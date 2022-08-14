#!/bin/bash
#by Everson

#Environment variable
# RTR=<path freerouter "rtr.jar">
# HWSW=<path files hardware and software>

# tmux new-session -d -s rare 'java -jar '$RTR' routersc r1-hw.txt r1-sw.txt'
# tmux split-window -v -t 0 -p 50
# tmux send 'java -jar '$RTR' routersc '$HWSW' r2-hw.txt '$HWSW' r2-sw.txt' ENTER;
# tmux split-window -h -t 0 -p 50
# tmux send 'java -jar '$RTR' routersc '$HWSW' r3-hw.txt '$HWSW' r3-sw.txt' ENTER;
# tmux select-layout tiled;
# tmux a;

#!/bin/bash

#Environment variable
RTR=rtr.jar
# HWSW= hardware and software>

tmux new-session -d -s rare 'java -jar '$RTR' routersc r1-hw.txt r1-sw.txt'
tmux split-window -v -t 0 -p 50
tmux send 'java -jar '$RTR' routersc r2-hw.txt r2-sw.txt' ENTER;
tmux split-window -h -t 0 -p 50
tmux send 'java -jar '$RTR' routersc r3-hw.txt r3-sw.txt' ENTER;
tmux split-window -h -t 0 -p 50
tmux send 'java -jar '$RTR' routersc r4-hw.txt r4-sw.txt' ENTER;
tmux split-window -h -t 0 -p 50
tmux send 'java -jar '$RTR' routersc r5-hw.txt r5-sw.txt' ENTER;
tmux split-window -h -t 0 -p 50

tmux select-layout tiled;
tmux a;