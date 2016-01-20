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
    
    var idWoeid = String()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        let parser = XMLParser(url: "https://weather.yahooapis.com/forecastrss?w=\(idWoeid)&u=c")
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
            
        }
        
        txtShowWeather.text = string
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
