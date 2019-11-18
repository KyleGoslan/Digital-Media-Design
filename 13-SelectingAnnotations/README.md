## 13 - Selecting Annotations 

### Creating Custom Annotations 

The annotations MapKit provides us are a useful starting point, but usually we'll want more informations associated with the markers we're displaying on the map. This is where we can create our own annotation sub class. There are lots of ways you could create your custom annotation for the map, but we'll base our off the `MKPointAnnotation` class that we've used already:

```swift 
import MapKit

class MyAnnotation: MKPointAnnotation  {

}

```

Creating one of these works exactly as before. Wherever were writing:

```swift 
let annotation = MKPointAnnotation()
```

We can now write: 

```swift 
let annotation = MyAnnotation()
```

Things will work just as before. 

### Selecting Annotations

Selecting annotations is easy with the map views delegate. First set the maps delegate in a view controller: 

```swift 
mapView.delegate = self
```

Add the extension to the view controller: 

```swift 
extension ViewController: MKMapViewDelegate {
	
}
```

The map view has a delegate function to allow you to handle what to do when ones of it's annotations is selected:

```swift
func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
	//Do stuff...    
}
```

### Customising Annotation Views

By default, the map view handles showing the annotations on the map, and we are given the default looking annotation. We can choose handle displaying this ourselves. This happens in the delegate method below. This is a starting point to customise how you display a MKMarkerAnnotation:

```swift 
func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {

    if annotation is MKUserLocation { return nil }
    
    let annotationView: MKMarkerAnnotationView?

    if let dequedView = mapView.dequeueReusableAnnotationView(withIdentifier: "identifier") as? MKMarkerAnnotationView {
        annotationView = dequedView
    } else{
        annotationView = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: "identifier")
    }

    //Do custom stuff here...

    return annotationView

  }
```
