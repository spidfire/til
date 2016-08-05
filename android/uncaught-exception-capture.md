# Uncaught Exception handler

In your activity:
` Thread.setDefaultUncaughtExceptionHandler(UncaughtExceptionHandler(this))`

Handler:
```
package nl.example.test.utilities

import java.io.PrintWriter
import java.io.StringWriter

import android.app.Activity
import android.content.Intent
import android.os.Build
import nl.example.test.activities.ErrorActivity

class UncaughtExceptionHandler(private val myContext: Activity) : java.lang.Thread.UncaughtExceptionHandler {
    private val LINE_SEPARATOR = "\n"

    override fun uncaughtException(thread: Thread, exception: Throwable) {
        val stackTrace = StringWriter()
        exception.printStackTrace(PrintWriter(stackTrace))
        val errorReport = StringBuilder()
        errorReport.append("************ CAUSE OF ERROR ************\n\n")
        errorReport.append(stackTrace.toString())

        errorReport.append("\n************ DEVICE INFORMATION ***********\n")
        errorReport.append("Brand: ")
        errorReport.append(Build.BRAND)
        errorReport.append(LINE_SEPARATOR)
        errorReport.append("Device: ")
        errorReport.append(Build.DEVICE)
        errorReport.append(LINE_SEPARATOR)
        errorReport.append("Model: ")
        errorReport.append(Build.MODEL)
        errorReport.append(LINE_SEPARATOR)
        errorReport.append("Id: ")
        errorReport.append(Build.ID)
        errorReport.append(LINE_SEPARATOR)
        errorReport.append("Product: ")
        errorReport.append(Build.PRODUCT)
        errorReport.append(LINE_SEPARATOR)
        errorReport.append("\n************ FIRMWARE ************\n")
        errorReport.append("SDK: ")
        errorReport.append(Build.VERSION.SDK)
        errorReport.append(LINE_SEPARATOR)
        errorReport.append("Release: ")
        errorReport.append(Build.VERSION.RELEASE)
        errorReport.append(LINE_SEPARATOR)
        errorReport.append("Incremental: ")
        errorReport.append(Build.VERSION.INCREMENTAL)
        errorReport.append(LINE_SEPARATOR)

        println(errorReport)
        exception.printStackTrace()
        val intent = Intent(myContext, ErrorActivity::class.java)
        intent.putExtra("error", errorReport.toString())
        myContext.startActivity(intent)

        android.os.Process.killProcess(android.os.Process.myPid())
        System.exit(10)
    }

}
```

activity_error.xml
```
<?xml version="1.0" encoding="utf-8"?>
<RelativeLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:tools="http://schemas.android.com/tools"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:paddingBottom="@dimen/activity_vertical_margin"
    android:paddingLeft="@dimen/activity_horizontal_margin"
    android:paddingRight="@dimen/activity_horizontal_margin"
    android:paddingTop="@dimen/activity_vertical_margin"
    tools:context="nl.example.test.activities.ErrorActivity">
<ScrollView
    android:layout_width="match_parent"
    android:layout_height="match_parent">


    <TextView
        android:id="@+id/error_text"
        android:text="Error message"
        android:layout_width="match_parent"
        android:layout_height="match_parent" />
</ScrollView>
</RelativeLayout>

```


ErrorActivity.kt
```
package nl.example.test.activities

import android.app.Activity
import android.os.Bundle
import kotlinx.android.synthetic.main.activity_error.*
import nl.example.test.R

class ErrorActivity : Activity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_error)
        val error = intent.getStringExtra("error")
        this.error_text.text = error

        error.split("[\r\n]+".toRegex()).forEach {
            println(it)
        }


    }
}

```
