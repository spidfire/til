# Demo mode for screenshots

https://android.googlesource.com/platform/frameworks/base/+/android-6.0.0_r1/packages/SystemUI/docs/demo_mode.md


```
adb shell settings put global sysui_demo_allowed 1
adb shell am broadcast -a com.android.systemui.demo -e command enter
adb shell am broadcast -a com.android.systemui.demo -e command battery -e plugged false -e level 100
adb shell am broadcast -a com.android.systemui.demo -e command notifications -e visible false
adb shell am broadcast -a com.android.systemui.demo -e command status -e location hide -e alarm hide  -e volume hide
adb shell am broadcast -a com.android.systemui.demo -e command status -e volume hide
adb shell am broadcast -a com.android.systemui.demo -e command clock -e hhmm 1815
adb shell am broadcast -a com.android.systemui.demo -e command wifi -e show true -e level 4
adb shell am broadcast -a com.android.systemui.demo -e command mobile -e datatype 4g
adb shell am broadcast -a com.android.systemui.demo -e command mobile -e level 4
```