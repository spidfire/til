# Constraint layout


## XML Rules

Base object
```
<android.support.constraint.ConstraintLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    android:layout_width="match_parent"
    android:layout_height="wrap_content"
    android:layout_marginBottom="8dp">


</android.support.constraint.ConstraintLayout>
    ```



###
```
app:layout_constraintVertical_chainStyle="packed"
```
###
```
app:layout_constraintDimensionRatio="1"
```
###
```
app:layout_constraintBottom_toBottomOf="parent"
```
###
```
app:layout_constraintLeft_toLeftOf="parent"
```
###
```
app:layout_constraintRight_toRightOf="@id/guideline2"
```
###
```
app:layout_constraintTop_toTopOf="parent"
```
###
```
app:layout_constraintVertical_bias="0.538"
```


If you have constraint to a text widget which can grow to a max size
```
app:layout_constraintWidth_default="wrap"
```