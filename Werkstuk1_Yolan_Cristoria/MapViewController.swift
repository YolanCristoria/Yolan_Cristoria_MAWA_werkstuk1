//
//  MapViewController.swift
//  Werkstuk1_Yolan_Cristoria
//
//  Created by yolan cristoria on 09/05/2018.
//  Copyright © 2018 yolan cristoria. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    
    var locationManager = CLLocationManager();

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //Mapkit
        locationManager.requestAlwaysAuthorization();
        if CLLocationManager.locationServicesEnabled(){
            locationManager.startUpdatingLocation();
        }
    }
    
    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation){
        let center = CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude)
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta:0.01, longitudeDelta: 0.01))
        mapView.setRegion(region, animated: true);
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    

}
