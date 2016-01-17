//
//  ViewController.swift
//  Test1Weather
//
//  Created by Sawakit on 12/1/59.
//  Copyright © พ.ศ. 2559 Sawakit. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate{
    

    
    @IBOutlet weak var Lat: UITextField!
    

    @IBOutlet weak var Long: UITextField!
    //var Name = String()
    var str:String = ""
    var titlefied = String()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titlefied = Lat.text!
        Lat.delegate = self
        
        //titlefied = Long.text!
        //Long.delegate = self
        
    }
    
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        Lat.resignFirstResponder()
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        if segue.identifier == "saveTitle"{
//            titlename = txtfied.text ?? "Nothing"
//            let controller = segue.sourceViewController as! MyTableViewController
//            controller.titleName = titlename
//        
//        }
//        
//    }

}

