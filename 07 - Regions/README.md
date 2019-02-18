## Regions

You can be notified about when a user enters or leave a specific area. This process is known as "geofencing". 

The `CLLocationManager` object is responsible for delivering this information and it is up to you how you respond to it. 

### Setting up Regions. 

Setting up a region is taken care of by creating a `CLCircularRegion` object. This take in a centre coordinate, a radius (in meters) and an identifier. 

```swift
let myCoordinate = CLLocationCoordinate2D(latitude: 0, longitude: 0)
let myRegion = CLCircularRegion(center: myCoordinate, radius: 500, identifier: "Hello World")
```

Once you've created a region you pass this to the `CLLocationManager` and ask it to start monitoring for that region. 

```swift
locationManager.startMonitoring(for: myRegion)
```
The location manager will deliver the notificaiton about entering or leaving a region via its delegate methods, for example:

```swift 
func locationManager(_ manager: CLLocationManager, didEnterRegion region: CLRegion) {
print("Entered: \(region.identifier)")
}
```
