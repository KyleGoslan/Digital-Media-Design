##Classes

Classes are the blueprints for our objects. When we define a class we list all the peices of info an object needs - these are its properties, and and defien all the things that objects does - these are its methods. 

Properties are nothing more than variables, and methods are nothing more than functions. 

```swift
class Person {
    var name = "Jon Doe"
    var age = 21
    
    func sayhello() {
        print("Hello World")
    }
}
```
This is about the most basic a class can get. It has two properties (name and age) and a method to say hello. 

We can create "instances" of this class now like this: 
```swift
var someone = Person()
```

And access its properties and methods like this:

```swift
someone.name
someone.age
somone.sayHello()
```

We can even reassign values to these (provided they are declared with the `var` keyword (as opposed to the `let` constant keyword). 

```swift 
someone.name = "Chris"
```

However, it makes more sense for use to specify these values when we create an instance of this object. We can do this with a custom initializer. A better version of this Person calss might look something like this. 

```swift
class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func sayhello() {
        print("Hello World")
    }
}
```

`init` is a special type of function. It gets called when an objects is initialized. Now when we create an instance of this object, we can pass in its name and age. Here we have to use the `self` keyword to distinguish between the value passed in and the objects property. 

Now when we create a `Person` it will look like this:

```swift
var someone = Person(name:"Chris", age: 21)
```