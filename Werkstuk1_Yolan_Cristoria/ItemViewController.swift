//
//  ItemViewController.swift
//  Werkstuk1_Yolan_Cristoria
//
//  Created by yolan cristoria on 03/05/2018.
//  Copyright © 2018 yolan cristoria. All rights reserved.
//

import UIKit

class ItemViewController: UIViewController {
    
    var myTemp: Persoon?;
    
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
