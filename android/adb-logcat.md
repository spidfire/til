# ADB logcat



Some nice tricks for logcat

# defaults:

- `adb logcat` show everything (works only with one device)
  - `adb -d logcat` Plugged in device
  - `adb -e logcat` Emulator
  - `adb -s some-name logcat` Specific device `adb devices` to get a list
- `adb logcat -b events` show all the events on the system
- `



### READ MORE

https://developer.android.com/studio/command-line/logcat.html




### different types of logcat output:

Android 17 Samsung galaxy s2:
```
D/dalvikvm(  557): GC_EXPLICIT freed 3028K, 28% free 42480K/58488K, paused 39ms+29ms, total 396ms
D/STATUSBAR-NetworkController(  754): refreshSignalCluster: data=-1 bt=false
D/STATUSBAR-IconMerger(  754): checkOverflow(144), More:true, Req:true Child:7
W/ResourceType(16651): Failure getting entry for 0x7f0202be (t=1 e=702) in package 0 (error -75)
D/elm     (21902): UploadActivationResponseModule : setActDeactAlarm() : alarmTime is .1414935946420
D/elm     (21902): UploadActivationResponseModule : setActDeactAlarm() : isUsePrefAlarmTime is .true
```


Android 23 Nexus 5:
```
07-21 13:23:12.661  8397  6839 I GCoreUlr: Place inference reporting - stop
07-21 13:23:12.722  8397  8397 I GCoreUlr: Starting service, intent=Intent { act=com.google.android.location.reporting.ACTION_UPDATE_ACTIVE_STATE cmp=com.google.android.gms/com.google.android.location.reporting.service.DispatchingService (has extras) }, extras=Bundle[{source=PowerModeReceiver}]
07-21 13:23:12.749  8397  6839 I GCoreUlr: DispatchingService.updateActiveState+PowerModeReceiver: Ensuring that reporting is active for [account#-6#]
07-21 13:23:12.750  8397  6839 I GCoreUlr: Place inference reporting - stop
```


Android 4.4.4 Samsung G S3
```
01-21 12:08:01.941 4280-4280/com.relcominc.fbt_12 I/dalvikvm: Could not find method android.content.res.TypedArray.getChangingConfigurations, referenced from method android.support.v7.widget.TintTypedArray.getChangingConfigurations
01-21 12:08:01.941 4280-4280/com.relcominc.fbt_12 W/dalvikvm: VFY: unable to resolve virtual method 458: Landroid/content/res/TypedArray;.getChangingConfigurations ()I
01-21 12:08:01.941 4280-4280/com.relcominc.fbt_12 D/dalvikvm: VFY: replacing opcode 0x6e at 0x0002
01-21 12:08:01.941 4280-4280/com.relcominc.fbt_12 I/dalvikvm: Could not find method android.content.res.TypedArray.getType, referenced from method android.support.v7.widget.TintTypedArray.getType
01-21 12:08:01.941 4280-4280/com.relcominc.fbt_12 W/dalvikvm: VFY: unable to resolve virtual method 480: Landroid/content/res/TypedArray;.getType (I)I
01-21 12:08:01.941 4280-4280/com.relcominc.fbt_12 D/dalvikvm: VFY: replacing opcode 0x6e at 0x0002
```
