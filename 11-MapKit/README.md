## 11 - Mapkit
### Notes

If you want to use maps in your project you need to import the MapKit framework. 

```swift
import MapKit 
```

Note: Mapkit includes the CoreLocation library, so you can use all the CoreLocation "stuff" as well. 

Map views work as you would expect right out the box, they are available as a view (`MKMapView`) in the object library. 

### Adding and Annotation 

The easiest way to add an annotation to the map is with an `MKPointAnnotation`:

```swift 
let annotation = MKPointAnnotation()
annotation.coordinate = CLLocationCoordinate2D(latitude: 51.419014, longitude: -0.610961)
annotation.title = "Hello World"
mapView.addAnnotation(annotation)
```

