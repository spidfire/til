# Examples of functional programming in imperative languages

## Imutable objects
Advantage:
 - No sudden changes in state
 - Good for parralleism
 - Thinking in conversions instead of mutaions
Disatvantages:
 - Copy objects
 - Different from your normal behaviour

in kotlin you have a simple construct
`val somevar = "test"`
after this the `somevar` cannot be changed
the only way to change the value is to create a new version like
`val somevar2 = somevar.replace("e","a") + "e"`
and other scripts still can use somevar without any change.

This will result in very dul programs because you cannot change anything.
In that case you use one variable which will store the state.
And the rest can be immutable
```kotlin
data class World(val color = "red", val size = 10)

var state = World("blue", 10)

// increase size
state = state.copy(size = 11)
```


## Flow / Declerative programming

@@ TODO


## Map flatmap etc

@@ TODO
