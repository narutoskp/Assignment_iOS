//
//  ShowViewController.swift
//  Test1Weather
//
//  Created by Sawakit on 14/1/59.
//  Copyright © พ.ศ. 2559 Sawakit. All rights reserved.
//

import UIKit

class ShowViewController: UIViewController {
    

    @IBOutlet weak var txtShowWeather: UITextView!
    
    var idwoeid = String()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        let parser = XMLParser(url: "https://weather.yahooapis.com/forecastrss?w=\(idwoeid)&u=c")
        let weather: Weather = parser.weather
        var string = String()
        
        string = "\(weather.title)\n\n"
        string += "Current Conditions: \(weather.descriptionOfConditions), \(weather.temp)C\n\n"
        string += "forecast:\n"
        for forecast in weather.forecasts {
            let day = forecast["day"] as! String
            let descriptionOfConditions = forecast["descriptionOfConditions"] as! String
            let highTemp = forecast["highTemp"] as! String
            let lowTemp = forecast["lowTemp"] as! String
            
            string += "\(day) - \(descriptionOfConditions). High: \(highTemp) Low: \(lowTemp)\n"
            
            print(string)
            
        }
        
        
        txtShowWeather.text = string


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
