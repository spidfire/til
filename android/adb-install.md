# installing and running android apk's from the terminal


First install
(-r is for reinstall)
```
adb install -r sample-app-debug.apk
```

And run the app:
```
adb shell am start -n nl.sample.app/nl.sample.app.LoginActivity
```

Add intent/extra parameters:
```
adb shell am start -n nl.sample.app/nl.sample.app.LoginActivity  -es test_key test_value
```
