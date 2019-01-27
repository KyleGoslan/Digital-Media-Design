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
