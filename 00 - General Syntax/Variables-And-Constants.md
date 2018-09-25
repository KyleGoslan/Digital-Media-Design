 ## Types Variables & Constants

Variables are created with the the keyword var. You then assign them a name and a value.

```swift
var name = "Jon"
var age = 10
```

Swift uses ‘Type Inference’ to infer what type of object a variable is. The example below is exactly the same as above, only here we’re stating the exact type of. When the type is obvious (i.e. it’s obvious “Jon” is a String and 10 is an Int) we don't have to do this and the above example is preferred.

```swift
var name: String = "Jon"
var age: Int = 10
```

**Tip**: Whenever you see a semicolon, read it as “is of type”.  You’ll see this when working with optionals and passing values into methods. So the example above would read as “The variable name is of type string and is equal to Jon”. 

We can replace the keyword var with let to make something a constant. They we then use them the same way as variable, only a constant (as the name implies) cannot be changed once it is set. 
