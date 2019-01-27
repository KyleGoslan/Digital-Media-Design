import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {
    
    let locationManager = CLLocationManager()

    var sliderLat: CLLocationDegrees = 0
    var sliderLng: CLLocationDegrees = 0
    
    @IBOutlet var mapView: MKMapView!
    
    @IBOutlet var latLabel: UILabel!
    @IBOutlet var longLabel: UILabel!
    
    @IBAction func latSlider(_ sender: UISlider) {
        latLabel.text = String(sender.value)
        sliderLat = CLLocationDegrees(sender.value)
    }
    
    @IBAction func longSlider(_ sender: UISlider) {
        longLabel.text = String(sender.value)
        sliderLng = CLLocationDegrees(sender.value)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func getAddressButton(_ sender: Any) {
        
        let span = MKCoordinateSpan(latitudeDelta: 2, longitudeDelta: 2)
        let region = MKCoordinateRegion(center:CLLocationCoordinate2D(latitude:
            sliderLat, longitude: sliderLng),span: span)
        mapView.setRegion(region, animated: true)
        
        let getAddress = Address()
        getAddress.latitude = sliderLat
        getAddress.longitude = sliderLng

        
        let annotation = CustomAnnotation(address: getAddress)
        mapView.addAnnotation(annotation)
        
    }

}




