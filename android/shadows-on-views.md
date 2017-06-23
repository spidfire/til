# Shadows on views


you can use `android:elevation='10dp'` or `app:elevation='10dp'` to create shadows

sometimes the parent should implement `android:clipToPadding='false'` to fix hidden shadows (like in a linearlayout)


Programatically:

`ViewCompat.setElevation(the_target_view, height_float)`