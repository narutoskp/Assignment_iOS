//
//  MyTableViewController.swift
//  Test1Weather
//
//  Created by Sawakit on 12/1/59.
//  Copyright © พ.ศ. 2559 Sawakit. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {
    
    var arrNameCity = [String]()
    var arrId = [String]()
    var selectTitle = String()
    var idWoeid:String = ""
    var idCity:String = ""
    var textLat = String()
    var textLong = String()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.reloadData()
        
        textLat = "Test"
        textLong = "Test1"
        
    }
    
    // MARK: - Table view data source
    @IBAction func saveTitle(segue:UIStoryboardSegue){
        print("saveTitle")
        if segue.identifier == "saveTitle" {
            
            let titleVC : LocationViewController = segue.sourceViewController as! LocationViewController
            textLat = titleVC.txtfiedLatitude.text!
            textLong = titleVC.txtfiedLongitude.text!

            
            let parser = XMLParser1(url1:"https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20geo.placefinder%20where%20text=%22\(textLat),\(textLong)%22%20and%20gflags=%22R%22")
            
            let weather: WeatherLocal = parser.weatherLocal
            
            idWoeid = weather.woeid
            idCity = weather.city

            arrNameCity.append(idCity)
            arrId.append(idWoeid)
            
            
        }
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        self.tableView.reloadData()
        print("------> viewDidDisappear")
        

    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }




    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrNameCity.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("mycell", forIndexPath: indexPath)
        cell.textLabel!.text = arrNameCity[indexPath.row]
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("You selected cell #\(indexPath.row)!")
        selectTitle = arrNameCity[indexPath.row]
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if let selectedRow = self.tableView.indexPathsForSelectedRows {
            let showViewController = segue.destinationViewController as! ShowViewController
            let indexPath = selectedRow[0]
            showViewController.idWoeid = arrId[indexPath.row]
        
        }

    }



}