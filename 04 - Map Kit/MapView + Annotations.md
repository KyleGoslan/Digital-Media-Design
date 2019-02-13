## MapView + Annotations

MapKit is used to embed a MapView into your project.  If you don't import the framework at the top of each file you want to use maps in, any MK command will error as 'unrecognised' - (MK = MapKit).

As you would expect, you can add markers or pins on to maps. In iOS and MapKit, these are called `MKAnnotations`. By default you can add `MKPinAnnotations`, but a common scenario is to want to add your own custom annotations. 

Mapkit makes this easy to do by conforming any object to the `MKAnnotation` protocol.  Create a new file and replace all the contents with the following:

```swift
import MapKit

class CustomAnnotation: NSObject, MKAnnotation {

}
```

>**Note:**
At this point you will have an error.

This states that our `CustomAnnotation` class can be used as an MKAnnotation. However in order for this class to conform to this protocol, it has to have one property called coordinate, which is of type `CLLocationCoordinate2D`. This makes logical sense, in order something to be displayed at a point on a map...it needs a coordinate. 

Go and add this property to the class now. We'll alos add a title property which will be a string - this is used (as the name suggests) as the title for the annotation, add the following in the class:

```swift
var coordinate: CLLocationCoordinate2D
var title: String?
```

Lets create an initializer to setup these properties as well. Underneath where you declared the properies at the following:


```swift 
init(coordinate: CLLocationCoordinate2D, title: String) {
  self.coordinate = coordinate
  self.title = title
}
```

This is all we need to start adding our `CustomAnnotation` object to an `MKMapView` as an annotation. 

Assuming you have an `IBOutlet` to a map view (the click and dragging from your storyboard to your view controller process), you can add the following to your `viewDidLoad` method: 

```swift
  //First create a CustomAnnotation instance.
  let someCoordinate = CLLocationCoordinate2D(latitude: 000, longitude: 000)
  let someAnnotation = CustomAnnotation(coordinate: someCoordinate, title: "Hello World")
  
  //Now add it to the map view.
  mapView.addAnnotation(someAnnotation)
```

## Finished Class

```swift
import MapKit

class CustomAnnotation: NSObject, MKAnnotation {

var coordinate: CLLocationCoordinate2D
var title: String?

init(coordinate: CLLocationCoordinate2D, title: String) {
self.coordinate = coordinate
self.title = title
}

}
```
