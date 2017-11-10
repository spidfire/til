# Screenshot



Either

```
adb shell screencap -p | perl -pe "s/\x0D\x0A/\x0A/g" > /tmp/clipboard.png
```

Or on new devices:

```
adb shell screencap -p  > /tmp/clipboard.png
```

Really fancy is directly copieing it to your clipboard (on Ubuntu)


```
alias screenshot='adb shell screencap -p | perl -pe "s/\x0D\x0A/\x0A/g" > /tmp/clipboard.png && xclip -selection clipboard -t image/png -i /tmp/clipboard.png'

```