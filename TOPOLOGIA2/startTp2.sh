#Environment variable
RTR=rtr.jar
# HWSW= hardware and software>

tmux new-session -d -s rare 'java -jar '$RTR' routersc r1-hw.txt r1-sw.txt'
tmux split-window -v -t 0 -p 50
tmux send 'java -jar '$RTR' routersc r2-hw2.txt r2-sw2.txt' ENTER;
tmux split-window -h -t 0 -p 50
tmux send 'java -jar '$RTR' routersc r3-hw2.txt r3-sw2.txt' ENTER;
tmux split-window -h -t 0 -p 50
tmux send 'java -jar '$RTR' routersc r4-hw2.txt r4-sw2.txt' ENTER;
tmux split-window -h -t 0 -p 50

tmux select-layout tiled;
tmux a;