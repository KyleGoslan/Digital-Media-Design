## Delegates

The "delegate pattern" or "delegation" is a common design pattern in may of the iOS frameoworks provided by Apple. 

The dictionary definition of “delegate” is “to give a particular job, duty, right, etc. to someone else so that they do it for you.” The dictionary definition of “delegation” is “the act of empowering to act for another.”. Keeping that in mind will help you in understanding what delegation is in code. 

Delegation is a design pattern that enables a class to hand off (delegate) some of its responsibilities to something else.

You have already used this a lot. The `CLLocationManager` object used this design pattern to deliver information back to us about certain events happening - for example when there is new location data avalible the `CLLocationManager` will call its delegates `locationManager(_:didUpdateLocations:)` method.

### Setting Up A Delegate

Many objects will have an optional `delegate` property you'll need to set. A lot of the time you'll be setting this property to `self`, which again, will often be one of your view controllers. Assuming you have created an instance of a `CLLocationManager` object called `locationManager`, you would set its delegate in teh `viewDidLoad` as follows:

```swift 
  locationManager.delegate = self
```

At this point you'll get this error:

> Cannot assign value of type 'ViewController' to type 'CLLocationManagerDelegate?'


At this point, this is expected ("ViewController" and "CLLocationManagerDelegate" may differ depending on what you're setting the delegate as and the type of delegate you're setting, but the principle is the same). In simple terms, this error is saying "The ViewController class isnt currently capable of being a CLLocationManager delegate". 

In order for one object to be another objects delegate it must "confrom to that delegates protocol". This means it must be able to do what is being delegated to that object. 

The best place to do this is in an extension of the class being set as the delegate, in this case the `ViewController` class. At the very bottom of the file (outside all other brackets), you would add the following: 

```swift
extension ViewController: CLLocationManagerDelegate {

}
```
This is essentially saying th the `ViewController` class is capable of being a `CLLocationManagerDelegate`. As all the delegate methods are optional, we dont actually have to implement any of them in this case.

<!--### Optional vs Non-Optional Delegate Methods-->
