//
//  Persoon.swift
//  Werkstuk1_Yolan_Cristoria
//
//  Created by yolan cristoria on 03/05/2018.
//  Copyright © 2018 yolan cristoria. All rights reserved.
//

import Foundation

import UIKit
import MapKit

class Persoon {
    var naam: String?
    var voornaam: String?
    var foto: UIImage?
    var adres: Adres?
//    var coordinaat: CLLocationCoordinate2D?
//    var gpsLongitude: Float?
//    var gpsLatitude: Float?
    var telefoonnummer: Int?
    
    init(naam: String, voornaam: String, foto: UIImage?, adres: Adres?, telefoonnummer: Int?) {
        self.naam = naam
        self.voornaam = voornaam
        self.foto = foto
        self.adres = adres
//        self.gpsLongitude = longitude
//        self.gpsLatitude = latitude
        self.telefoonnummer = telefoonnummer
    }
    
    
    
}
