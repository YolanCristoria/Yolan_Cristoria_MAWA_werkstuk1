//
//  TableViewController.swift
//  Werkstuk1_Yolan_Cristoria
//
//  Created by yolan cristoria on 03/05/2018.
//  Copyright © 2018 yolan cristoria. All rights reserved.
//

import UIKit
import CoreLocation

class TableViewController: UITableViewController {
    
    var Personen = [Persoon]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        let yolanAdres = Adres(straat: "Meerstraat", huisnummer: 11, gemeente: "Londerzeel", postcode: 1840)
        let jorickAdres = Adres(straat: "Jorickstraat", huisnummer: 22, gemeente: "Yorickenyorick", postcode: 2000)
        let thomasAdres = Adres(straat: "Thomasstraat", huisnummer: 33, gemeente: "Tomaatenstad", postcode: 3000)
        
        let yolancoordinaat = CLLocationCoordinate2D(latitude: 51.004951, longitude: 4.303231)
        let jorickcoordinaat = CLLocationCoordinate2D(latitude: 51.194838, longitude: 4.289027)
        let thomascoordinaat = CLLocationCoordinate2D(latitude: 51.171838, longitude: 4.103232)
        
        Personen.append(Persoon(naam: "Cristoria", voornaam: "Yolan", foto: UIImage(named: "Yolan"), adres: yolanAdres, telefoonnummer: 0492111111, coordinaat: yolancoordinaat))
        Personen.append(Persoon(naam: "De Clercq", voornaam: "Jorick", foto: UIImage(named: "Jorick"), adres: jorickAdres, telefoonnummer: 0492222222, coordinaat: jorickcoordinaat))
        Personen.append(Persoon(naam: "Bonemeijer", voornaam: "Thomas", foto: UIImage(named: "Thomas"), adres: thomasAdres, telefoonnummer: 0492333333, coordinaat: thomascoordinaat))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Personen.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "persoonCel", for: indexPath)
    
//         Configure the cell...
        let persoon = Personen[indexPath.row]
        cell.textLabel?.text = persoon.naam
        cell.detailTextLabel?.text = persoon.voornaam
        cell.imageView?.image = persoon.foto
        
        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "naarDetail" {
            if let vc = segue.destination as? ItemViewController {
                let indexPath = tableView.indexPathForSelectedRow
                vc.myTemp = self.Personen[(indexPath?.row)!]
            }
        }
    }


}
