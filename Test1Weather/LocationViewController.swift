//
//  LocationViewController.swift
//  Test1Weather
//
//  Created by Sawakit on 14/1/59.
//  Copyright © พ.ศ. 2559 Sawakit. All rights reserved.
//

import UIKit

class LocationViewController: UIViewController , UITextFieldDelegate{

    @IBOutlet weak var txtfiedLatitude: UITextField!
    @IBOutlet weak var txtfiedLongitude: UITextField!
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(animated: Bool) {
        

    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {

        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

    @IBAction func resetOk(sender: AnyObject) {
    }
}

