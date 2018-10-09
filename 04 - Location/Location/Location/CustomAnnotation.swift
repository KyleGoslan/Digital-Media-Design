import UIKit
import MapKit

class CustomAnnotation: NSObject, MKAnnotation {
    
    var coordinate: CLLocationCoordinate2D
    var title: String?
    
    init(address: Address) {
        self.coordinate = CLLocationCoordinate2D(latitude: address.latitude!, longitude: address.longitude!)
        self.title = address.title
    }
    
    
}

class Address: NSObject {
    var latitude:CLLocationDegrees?
    var longitude:CLLocationDegrees?
    var title = ""
}
