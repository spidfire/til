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