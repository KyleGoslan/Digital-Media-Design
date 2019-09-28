## 02 - Fundamentals 

 ## Classes

A class provides a template/blueprint/design layout for your object. 

We write a class by using the keyword ‘class’ followed by the name of the class. Remember to use an uppercase when naming your class. 

The space between the curly brackets is where the properties and functions to do with that class are kept. (If it goes outside the brakcets xcode won't know what the added detail is referring to.)  


```swift
class Person {


}
```

^ This is a blank class. 

Properties and Methods add detail and functionality to your class. 

 ## Properties

A property can be either a variable or a constant. A variable can be changed a constant cannot. 

+ A variable is written with the abreviation 'var'
+ A contant uses the syntax 'let'

Swift uses ‘Type Inference’ to infer what type of object a variable is. So you have to declare what type the variable is. The syntax for declaring a type of variable is a colon:

+ ‘is of type’ = ‘:’

The two types we looked at in the workshop are Strings and Integers.

+ String = Charcaters 
+ Integer = (whole) Numbers 


```swift
var name: String!
var age: Int!
```

Read: "The variable name is of type string/characters"
Read: "The variable age is of type integer/numbers"

Once you have declared the type of the property, you need to initialise it. This creates neutral ‘title’ of the variables that each object in the class must have. You can then set the individual properties for each instance of the class.


``` swift
init(name:String, age: Int) {
self.name = name
self.age  = age
}
```
Self is used to differentiate between the property ‘name’ and the parameter ‘name’. The parameter name is in the brackets after 'init' and the property is the variable you set at the beginning. 


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





