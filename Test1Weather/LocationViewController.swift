//
//  LocationViewController.swift
//  Test1Weather
//
//  Created by Sawakit on 14/1/59.
//  Copyright © พ.ศ. 2559 Sawakit. All rights reserved.
//

import UIKit

class LocationViewController: UIViewController , UITextFieldDelegate{

    @IBOutlet weak var textwelcome: UILabel!
    @IBOutlet weak var txtfiedLatitude: UITextField!
    @IBOutlet weak var txtfiedLongitude: UITextField!
    @IBOutlet weak var btnClick: UIButton!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
        
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {

        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
}

