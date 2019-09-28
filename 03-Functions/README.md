## 03 - Functions

> Functions are self-contained chunks of code that perform a specific task. You give a function a name that identifies what it does, and this name is used to “call” the function to perform its task when needed.

### A Basic Function

All functions start with the keyword `func`. The most basic function you can write looks like this: 

```swift

func myFunction() {
	// Code to execute...
}
	
```
The name of this function is "myFunction". It accepts no parameters, this is denoted by the empty set of brackets after the function name. The code for the function to perform then comes inside the curly brackets. These mark the beginning and end of the function. 

Defining the function **does not** execute it. To perform the action of the function, you must "call" it. To call the function above you would do the following from somewhere in your code: 

```swift

myFunction()
	
```

Let put this example into a View Controller setup for some context:

```swift

viewDidLoad() {
	super.viewDidLoad()
	myFunction()
}

func myFunction() {
	// Code to execute...
}

```

The `viewDidLoad` function gets called automatically for us when a View Controller loads. From inside there we call the `myFunction`, which in turn may call other functions...and so on.

Functions allow us to separate out functionality into manageable blocks of code. Some functions may be a line or two, some may be a lot longer. If a function grows too large it's often a good idea to break it into several smaller functions to keep things manageable. 


### Arguments

Arguments (sometimes called parameters) can be passed to a function to alter its behaviour. For example, imagine your app needs to uplaod an image. It's a task that will need to be performed time and time again, so writing this functionality in a function makes a lot of sense. You may write this functionality in an `uploadImage` function. Adding an argument to this function allows you to specify the image to upload, and would look like this: 

```swift 
	
func uploadImage(image: UIImage) {
	// Code to upload image...
}

```


Now when we call the function we have to pass in a UIImage instance to the function:


```swift

uploadImage(image: someImge)

```

Lets look at simple example. We'll write a simple function that prints out some text, and we'll change that text from the argument that's passed in. The basic function will look like this: 

```swift

func printGreeting() {
	print("Hello, my name is Jon")		
}

```

At the moment this function **always** prints "Hello, my name is Jon". Maybe we we want to change the name in that text each time we call the function. We can add an argument to do just that. We'll add a name argument with the type of String and replace "Jon" in the print statement with that name string:

```swift

func printGreeting(name: String) {
	print("Hello, my name is Jon")		
}

```

In this example there is a constant called `name` which contains the value passed to the function. **This value only exists within the function.** We'll use that name value in the printed statement:

```swift

func printGreeting(name: String) {
	print("Hello, my name is \(name)")		
}

```

Now calling the function will look like this: 

```swift

printGreeting(name: "Sam")
printGreeting(name: "Paul")
printGreeting(name: "Kate")

```

Will print...

>Hello, my name is Sam	
>Hello, my name is Paul	
>Hello, my name is Kate	


### Returning Values

As well as arguments, functions can also return values. To return a value from a function you must explicitly state what value type you are going to return.

```swift
func myFunction() -> String {
	return "Hello World"
}
```

Before the opening curly brace of the function body there is an arrow and a type **-> String**. In the example above the function is explicitly expected to return a string value. This is expressed with the **return** keyword followed by the value. 

You can assign the value of the return value to a variable or constant value. Following on from the example above:

```swift
let message = myFunction()
```
In this case the constant **message** will be a string - in this example "Hello World"

##Putting It All Together

```swift

func addNumbers(firstVaule: Int, secondValue: Int) -> Int {
	return firstValue + secondValue	
}

let total = addNumbers(firstVaule: 7, secondValue: 4)

```

The value of **total** will be 11. 






