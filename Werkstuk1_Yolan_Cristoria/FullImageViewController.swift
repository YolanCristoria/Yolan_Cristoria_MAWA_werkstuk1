//
//  ViewController.swift
//  Werkstuk1_Yolan_Cristoria
//
//  Created by yolan cristoria on 03/05/2018.
//  Copyright © 2018 yolan cristoria. All rights reserved.
//

import UIKit

class FullImageViewController: UIViewController {

    var tempImage: UIImage?
    
    @IBOutlet weak var imgFullImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imgFullImage.image = tempImage
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

