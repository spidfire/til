# Android splashcreen

To create a splashscreen for android you only have to make a style with a background.

### add style `values/styles.xml`

Note `YourOwnDefaultTheme` replace this with your own theme or default theme
```xml
<?xml version="1.0" encoding="utf-8"?>
<resources>

  .......

    <style name="SplashTheme" parent="YourOwnDefaultTheme">
        <item name="android:windowBackground">@drawable/login_screen</item>
    </style>

  .......

</resources>

```



### Create a login screen drawable or reuse an image
Note `YourOwnDefaultTheme` replace this with your own theme or default theme
Create (optional) `drawable/login_screen.xml`:
```xml
<layer-list xmlns:android="http://schemas.android.com/apk/res/android">
    <item
        android:drawable="@color/blue"/>

    <item>
        <bitmap
            android:gravity="center"
            android:src="@drawable/logo"/>
    </item>
</layer-list>

```

Other choice is to use a existing drawable (set this on the location `@drawable/login_screen` from step one)


### Adapt your statup activity to use the theme you've created in step one
In the `AndroidManifest.xml`

Note the line `android:theme="@style/SplashTheme"`

```xml
<activity
    android:name=".SplashActivity"
    android:theme="@style/SplashTheme">
    <intent-filter>
        <action android:name="android.intent.action.MAIN" />

        <category android:name="android.intent.category.LAUNCHER" />
    </intent-filter>
</activity>
```