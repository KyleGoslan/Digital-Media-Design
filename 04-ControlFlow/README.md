## 04 - Control Flow

This is the order in which you command different actions/fucntions to happen within your project. Think of it like a flow diagram: 

![alt text](https://blog.knockknockstuff.com/wp-content/uploads/2013/07/Dilemmas_Social_ONLINE_vert31.jpg "Logo Title Text 1")

By querying what state the programme is at there can be varied outcomes. There are different ways of controlling the flow of your project. 

### if
Will probably be the most common of all the control flow commands you will use. You simply ask 'if' a condition has been met or happened yet.  

### else
An 'else' most commonoly follows an 'if' 

This provides an alternative action option for exmaple:

    ```swift

        if thereIsSomethingHere {
            doThis 
            } else {
            doSomethingDifferent 
            }  

        }
    ```    

### guard 
A gaurd statement is a more secure version of an if statement becuase
1. It has to be true 
2. It has to be followed by else 

### let
As discussed in the fundamentals notes a 'let' is a constant value 

## Combining these commands: 

### if let 
Simply asking if a constant exists

### guard let
More secure way of asking if a constant is true - as with a guard - it MUST BE TRUE

## Loops
Uses an array (list) of items and the outcome has to use a value from that list. The list can be of any type for example: dictionaries, strings, intagers

### For In 
Uses an arrary (list). It looks for a specific value within an specific array. For example: 

    ```swift 

        let names = ["Anna", "Alex", "Brian", "Jack"]
        for name in names {
            print("Hello, \(name)!")
        }
        // Hello, Anna!
        // Hello, Alex!
        // Hello, Brian!
        // Hello, Jack!

    ```
