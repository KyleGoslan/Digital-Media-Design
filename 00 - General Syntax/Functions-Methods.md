##Functions/Methods

Functions work similarly to what we’ve seen in the past. They are named blocks of code that we can call over and over to perform a task. They are declared with the word func the name we want to give the function, a set of brackets and then a set of curly braces which contains whatever we want to function to do. A simple function looks like this. 

```swift
func sayHello() {
    print("hello")
}
```

To call a function we simply type its name followed by a set of brackets.

```swift
sayHello()
```

We can add flexibility to our functions by allowing them to take arguments (or parameters) and using them inside our functions.  This function now accepts an argument of “name” which is of type String. All this means is that when we call this function its expecting a String to be passed to it which it can use, and it will be called name.

```swift
func sayHello(name: String) {
    print("hello my name is \(name)")
}
```

**Note**: I’m using string interpolation to use the name value within a String.

The call to the function would now look something like this.

sayHello("Jon")

**Note**: “Functions” and “Methods” are (for all intensive purposes) are the same thing. The difference being that a function becomes a method when it is contained within a class. They are written and perform in exactly the same way. 
