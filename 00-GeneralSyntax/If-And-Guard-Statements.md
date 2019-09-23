##  If & Guard Statements

### If Statments

Probably the most common way to determin different actions in your application is with an `if` statement - this is often reffered to as "control flow". The easiest way to think of an if statement is to think of askign a question. This question must be answer in a "yes" or "no" manner, although in Swift this is "true" or "false". 

```swift
if age == 1 {
  //The value of age is 1, so the code inside the bracketes will be exectuted.
}
```
If the condition is met (i.e.`true`) then the code inside the brackets will be executed, otherwise (i.e. `false`) the code will simply be skipped. Sometimes you'll want to do one thing in the case of `true` and another in the case of `false`. In this case you can expand your if statement with an `eles` block. 

```swift
if age == 1 {
  //The value of age is 1, so the code inside the bracketes will be exectuted.
} else {
  //age was not 1, so do this instead. 
}
```

### Guard Statments

Guard statements in Swift allow you to control the flow of your application by "putting up a wall" in the way of a condition and handling the situation when that condition isn't met. Guard statments **must** `return` and cannot "fall though".

```swift
guard age >=  18 else {
  //age is not at least 18, so handle that situation then return from this function.
  return
}
```

A fully formed function of the above might look like this:

```swift

func haveBeer(age: Int) {
  guard age >=  18 else {
    print("Sorry, not old enough.")
    return
  }

  print("Yay! 🍺")
}

```
