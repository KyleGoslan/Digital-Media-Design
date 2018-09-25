 ## Functions/Methods

Methods are blocks of code that perform a specific task or functionality. They can perform the task repeatedly without you having to right out more code. 

Functions are declared with the abreviation of the word function to 'func'. A set of brackets and then a set of curly braces which contains whatever we want to function to do. A blank function looks like this. 

```swift
func bio(){

}
```
In the workshop we got the function to print out a bio about a Person. 

```swift
func bio(){
print("My name is \(self.name), I am \(self.age) from Bournemouth")

}
```

The backslash and brackets are just used to encase the variable being used in the print statment. This allows you to add flexibility to your functions by allowing them to take arguments (or parameters) and using them inside your functions.  This function now accepts an argument of “name”. All this means is that when we call this function it's expecting a String to be passed to it which it can use, and it will be called name.


To call a function we simply type its name followed by a set of brackets.

```swift
me.bio()
```


**Note**: “Functions” and “Methods” are (for all intensive purposes) are the same thing. The difference being that a function becomes a method when it is contained within a class. They are written and perform in exactly the same way. 
