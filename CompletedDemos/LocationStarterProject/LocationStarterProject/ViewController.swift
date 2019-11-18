//
//  ViewController.swift
//  LocationStarterProject
//
//  Created by Kyle Goslan on 18/11/2019.
//  Copyright © 2019 Kyle Goslan. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController {

  let locationManager = CLLocationManager()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    locationManager.requestAlwaysAuthorization()
    locationManager.delegate = self
    locationManager.startUpdatingLocation()
    
  }


}


extension ViewController: CLLocationManagerDelegate {

  func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
    guard let userLocation = locations.last else { return }
    print(userLocation)
  }
  
}
