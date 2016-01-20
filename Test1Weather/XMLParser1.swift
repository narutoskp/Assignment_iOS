//
//  XMLParser1.swift
//  Weather1
//
//  Created by Sawakit on 12/1/59.
//  Copyright © พ.ศ. 2559 bananacoding. All rights reserved.
//

import UIKit

class XMLParser1: NSObject, NSXMLParserDelegate {
    
    private var parserLocal = NSXMLParser()
    private var element1 = String()
    var weatherLocal = WeatherLocal()
    
    init(url1: String) {
        super.init()
        print("parse success")
        let urlToSend: NSURL = NSURL(string: url1)!
        parserLocal = NSXMLParser(contentsOfURL: urlToSend)!
        parserLocal.delegate = self
        
        let success: Bool = parserLocal.parse()
        
        if success {
            print("parse success")
        }
    }
    
    func parser(parserLocal: NSXMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?,attributes attributeDict: [String : String]) {
        
        element1 = elementName
        
        if elementName == "Result" {
            weatherLocal = WeatherLocal()
        }
 
    }

    func parser(parserLocal: NSXMLParser, foundCharacters string: String) {
        if element1 == "city" {
            weatherLocal.city += string
        }else if element1 == "woeid" {
            weatherLocal.woeid += string
        }
    }
    
    func parser(parserLocal: NSXMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        if elementName == "results" {
            return;
        }
    }
    
    func parser(parserLocal: NSXMLParser, parseErrorOccurred parseError: NSError) {
        print("parse failure! error: \(parseError)");
    }
}

