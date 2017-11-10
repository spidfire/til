# Android Tests
```
build.gradle

+
+    // Required -- JUnit 4 framework
+    testCompile 'junit:junit:4.12'
+    // Optional -- Mockito framework
+    testCompile 'org.mockito:mockito-core:1.10.19'
+
 }

 android{
-
+    testOptions {
+        unitTests.returnDefaultValues = true
+    }
}
```



```
src/test/java/FirstTest.kt


import android.test.mock.MockContext
import nl.almanapp.designtest.elements.AlmaEditText
import org.hamcrest.CoreMatchers.`is`
import org.hamcrest.MatcherAssert.assertThat
import org.junit.Test
import org.junit.runner.RunWith
import org.mockito.runners.MockitoJUnitRunner



@RunWith(MockitoJUnitRunner::class)
class FirstTest {

    @Test
    fun readStringFromContext_LocalizedString() {
        val mocked = MockContext()
        // Given a mocked Context injected into the object under test...
        //        when(mMockContext.getString(R.string.app_apply))
        //                .thenReturn(FAKE_STRING);
        val myObjectUnderTest = AlmaEditText(mocked, null)

        // ...then the result should be the expected one.
        assertThat(myObjectUnderTest.parseCurrency("EUR", "0.22").formatted_string, `is`("€ 0,22"))
    }

    companion object {

        private val FAKE_STRING = "HELLO WORLD"
    }
}

// OR

import org.hamcrest.CoreMatchers.`is`
import org.hamcrest.MatcherAssert.assertThat
import org.junit.Test
import org.junit.runner.RunWith
import org.mockito.runners.MockitoJUnitRunner



@RunWith(MockitoJUnitRunner::class)
class FirstTest {

    @Test
    fun readStringFromContext_LocalizedString() {

        assertThat("$ 0.22", `is`("€ 0,22"))
    }

    companion object {

        private val FAKE_STRING = "HELLO WORLD"
    }
}

```