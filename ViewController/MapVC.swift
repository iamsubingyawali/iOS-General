//
//  MapVC.swift
//  Reebok
//
//  Created by Subin Gyawali on 3/13/21.
//

import UIKit
import MapKit
import CoreLocation

class MapVC: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var btnBackMap: UIButton!
    
    var locationManager = CLLocationManager()
    
    var latitude: Double = 27.719923
    var longtide: Double = 85.383464
    
    func loadMapView(){
        self.locationManager.delegate = self
        self.locationManager.requestWhenInUseAuthorization()
        self.mapView.showsUserLocation = true
        
        if(CLLocationManager.locationServicesEnabled()){
            self.locationManager.startUpdatingLocation()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let userLocation = CLLocation(latitude: latitude, longitude: longtide)
        self.mapView.centerToLocation(userLocation)
        self.loadMapView()
    }
    
    @IBAction func backClicked(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print("Updating location.")
        self.mapView.centerToLocation(locations[0])
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
