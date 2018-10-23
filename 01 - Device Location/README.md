## Device Location

### Requesting Permission

Before you do *anyhting* with a users device location you *must* request that your app has access to that information and a user can either allow or deny that access. 

There are two parts to this process: 

1. Add the relevant keys the apps Info.plist file. 
2. Make the request via a method call on a `CLLocationManager` object.

#### Setting up the Info.plist file

All apps come with an Info.plist file. This file contains some settings and other bits of information about your app. There are **two** additions you need to make in this file:

- Privacy - Location Always and When In Use Usage Description
- Privacy - Location When In Use Usage Description

You must provide an approprite description for each of these as well - this is the message the user will see when they are asked to grant permission for your app to use their location. 

## The Location Manager Object

Any class that wishes to use location "stuff" will need to inclide the `CoreLocation` library. As the name suggests this is the 

At the top of the file you will need to add: 

```swift
import CoreLocation
```

> **Note**
If you are using maps and import `MapKit` then there is no need to also import CoreLocation as it is contained within MapKit. 

Almost all the key concepts about deling with user location takes place though a `CLLocationManager` object. This must be created as a property of the class:

```swift
let locationManager = CLLocationManager()
```

Inside your `viewDidLoad` method, you will need the following: 

```swift  
locationManager.requestAlwaysAuthorization()
locationManager.delegate = self
locationManager.startUpdatingLocation()
```

- The first line completes the request for the user to grant permission for you application to use the device location. It is at this point that the alert will be displayed to the user.
- You set the location manager delegate to `self`. In this case it is the view controller. This is how the CLLocationManager delivers location related data back to you - **At this point you will get an error, you'll fix that next.**
- Finally, you start asking the location manager to begin delivering updates about the users location. 

At the bottom of the file (outside even the last curly bracket). Add the following:

```swift
extension ViewController: CLLocationManagerDelegate {

}
```

This is enough to remove the error. It basically says that the view controller can be a CLLocationManagers delegate, although actually implimenting any of the delegate methods is optional - which is why we can leave it empty. 


### Location Manager Delegate Methods

There are a lot of methods that you can optionally implement in the above code block. If you start typing location, you will see the list of all the methods you utilise here. To be notified of an update you can add the following method (inside the curly brackets following on from above). This will simply print out the most recent location of a user: 

```swift
func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
  print(locations.last!)
}
```
