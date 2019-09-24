 ## Protocol
 
 A protocol is written in a very similar way to a class - you use the key word protocol followed by the name of your protocol (with an uppercase): 

```swift

protocol SendDelegate {
    func userPressedSend(data: String)


}
```

A function within a protocol can be used across mutiple classes - if a class uses a protocol it is called 'conforming' to the protocol type. This means that from any View Controller or Class in your project the protocol is accessible or 'gettable' meaning you can retrieve a variable or function from the protocol as it sits outide or above all your other classes. 

By declaring a new view controller to be 'of type' or ':' of your protocol name it allows the function to be used in that class. 

```swift
class ViewController: UIViewController, SendDelegate {

}
```

