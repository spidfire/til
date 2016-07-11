# Some info on screen

 - restore screen session: `screen -r`
 - detatch and reatach with session with specific name `screen -DR some_session_name -d`
 - run specific command `screen -m bash -c "echo 'yolo' && sleep 3"`


#combination :
```
screen -DR androidstudio -d -m bash -c "cd $ANDROIDSTUDIO/bin/ && ./studio.sh"
```