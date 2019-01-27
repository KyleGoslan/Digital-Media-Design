 ## Optionals

Fundementally, Optionals in Swift are used to refer to a value that may or may not exist. They are marked with a question mark and the type that the value may or may not contain, for example: 

```swift
var someNumber: Int?
```

The above code says that the variable "someNumber" may or may not contain an ```Int``` when we ask for it, it *could* be ```nil```. 

Optionals crop up all over the place Swift. For example when working with arrays you may sometimes as for the first or last value of the array: 

```swift
let foo = names.last
```
As the array *could* be empty, the value for foo will be optional. 

### Forced Unwrapping

In the above example (supposing names was an array of Strings), if you were to print the value of foo you would see something like: 

```swift
Optional("Jon")
```

If you're sure that a value exists then you can "force unwrap" it with an exclamation mark: 

```swift
let foo = names.last!
```

The exclamation mark essentially says "I am sure this value exists". If the names array in this case was empty, your app would crash with the error "Unexpectedly found nil while unwrapping an optional value".
