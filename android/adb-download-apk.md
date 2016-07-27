# Way to download an apk

List all the apk's
```
adb shell pm list packages -f
```

Get the apk
```
adb pull {the file name}
```

### Get some info from the apk
```
aapt dump badging {apk file}
```

some info on `aapt`

http://stackoverflow.com/questions/2789462/find-package-name-for-android-apps-to-use-intent-to-launch-market-app-from-web/7502519#7502519

the tools is located in
`<sdk_home>/build-tools/android-<api_level>`
or
`<sdk_home>/platform-tools`
or
`<sdk_home>/platforms/android-<api_level>/tools`
