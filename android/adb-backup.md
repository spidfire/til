# Backup your android phone

```
adb backup -apk -shared -all -f nexus.$(date +%Y-%m-%d).ab
```


Args:

`-system|-nosystem` Backup systemfiles
`-all` backup all apps (otherwise use specific package name)
`-shared|-noshared` Backup things like sdcard
`-apk|-noapk` include apk's
`-f [file]` Location to backup the files


## Restore

```
adb restore nexus.2016-06-06.ab
```