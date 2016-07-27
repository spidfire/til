# Intent's in android


Send some plain text:

```
Intent sendIntent = new Intent();
sendIntent.setAction(Intent.ACTION_SEND);
sendIntent.putExtra(Intent.EXTRA_TEXT, "This is my text to send.");
sendIntent.setType("text/plain");
startActivity(sendIntent);
```


OR use `Intent.createChooser` to get a dialog with choices


```
startActivity(Intent.createChooser(sendIntent, getResources().getText(R.string.send_to)))
```




### Trigger apps with specific url's

```xml
<!-- handle website links -->
<intent-filter>
    <action android:name="android.intent.action.VIEW" />
    <category android:name="android.intent.category.DEFAULT" />
    <category android:name="android.intent.category.BROWSABLE" />
    <data android:scheme="http" android:host="qr.example.nl" />
</intent-filter>

<!-- handle https website links -->
<intent-filter>
    <action android:name="android.intent.action.VIEW" />
    <category android:name="android.intent.category.DEFAULT" />
    <category android:name="android.intent.category.BROWSABLE" />
    <data android:scheme="https" android:host="qr.example.nl" />
</intent-filter>

<!-- handle app links -->
<intent-filter>
    <action android:name="android.intent.action.VIEW" />
    <category android:name="android.intent.category.DEFAULT" />
    <category android:name="android.intent.category.BROWSABLE" />
    <data android:scheme="example" />
</intent-filter>

```

### Example test commands
```
adb shell am start -a android.intent.action.VIEW -d "http://qr.example.nl/test"
adb shell am start -a android.intent.action.VIEW -d "https://qr.example.nl/test"
adb shell am start -a android.intent.action.VIEW -d "example://test"
```


# Get available intents on a program

`adb shell dumpsys package {package name}`

