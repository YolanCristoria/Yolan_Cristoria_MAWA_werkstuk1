//
//  ItemViewController.swift
//  Werkstuk1_Yolan_Cristoria
//
//  Created by yolan cristoria on 03/05/2018.
//  Copyright © 2018 yolan cristoria. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class ItemViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    
    var myTemp: Persoon?;
    var locationManager = CLLocationManager();
    
    @IBOutlet weak var imgPersoonIMG: UIImageView!
    
    @IBOutlet weak var lblNaam: UILabel!
    
    @IBOutlet weak var lblVoornaam: UILabel!
    
    @IBOutlet weak var lblGemeente: UILabel!
    
    @IBOutlet weak var lblStraat: UILabel!
    
    @IBOutlet weak var lblHuisnummer: UILabel!
    
    @IBOutlet weak var lblPostcode: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblNaam.text = myTemp?.voornaam
        lblVoornaam.text = myTemp?.naam
        lblGemeente.text = myTemp?.adres?.gemeente
        lblStraat.text = myTemp?.adres?.straat
        lblHuisnummer.text = myTemp?.adres?.huisnummer?.description
        lblPostcode.text = myTemp?.adres?.postcode?.description
        imgPersoonIMG.image = myTemp?.foto
        
        //Mapkit
        locationManager.requestAlwaysAuthorization();
        
        if CLLocationManager.locationServicesEnabled(){
            locationManager.startUpdatingLocation();
        }
        
        //Gesturetest
        

    }
    @IBAction func tapOnImage(_ sender: UITapGestureRecognizer) {
        
    }
    
    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation){
        let center = CLLocationCoordinate2D(latitude: (myTemp?.coordinaat?.latitude)!, longitude: (myTemp?.coordinaat?.longitude)!)
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
