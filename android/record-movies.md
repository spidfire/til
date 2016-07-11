# Do a screen capture

To start recording to screencapture.mp4
```
adb shell screenrecord --bit-rate 6000000 /sdcard/screencapture.mp4
```

To download the capture
```
adb pull /sdcard/screencapture.mp4
```
