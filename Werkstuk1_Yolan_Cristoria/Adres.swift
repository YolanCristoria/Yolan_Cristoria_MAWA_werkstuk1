//
//  Adres.swift
//  Werkstuk1_Yolan_Cristoria
//
//  Created by yolan cristoria on 03/05/2018.
//  Copyright © 2018 yolan cristoria. All rights reserved.
//

import Foundation

class Adres {
    var straat: String?
    let huisnummer: Int?
    var gemeente: String?
    var postcode: Int?
    
    init(straat: String?, huisnummer: Int?, gemeente: String?, postcode: Int?) {
        self.straat = straat
        self.huisnummer = huisnummer
        self.gemeente = gemeente
        self.postcode = postcode
    }
    
}
