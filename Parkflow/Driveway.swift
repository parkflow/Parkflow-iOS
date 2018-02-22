//
//  Driveway.swift
//  Parkflow
//
//  Created by Karl Michel Koerich on 2018-02-03.
//  Copyright © 2018 Hamko. All rights reserved.
//

import Foundation
import MapKit

class CustomPointAnnotation: MKPointAnnotation {
    
    var statusPinImageName: String!
    //We got to create a link between the pin and the driveway to make easier the pin colour change
}

class Driveway {
    
    var owner: String //For now we will keep it a String, later it will a Person
    //let address: String
    let coordinates: CLLocationCoordinate2D
    var status: Int
    var mapPin: CustomPointAnnotation!
    
    init(owner: String, coordinates: CLLocationCoordinate2D, status: Int)
    {
        
        self.owner = owner
        //self.address = address
        self.coordinates = coordinates
        
        let mapPin = CustomPointAnnotation()
        mapPin.coordinate = coordinates
        mapPin.title = owner + "'s driveway"

        self.mapPin = mapPin
        self.status = status //0 UNAVAILABLE
                            //1 AVAILABLE
                            //2 YOUR CAR IS ON IT
        
        var statusStr = "redPin.png"
        
        switch status {
            
        case 0:
            statusStr = "redPin.png"
        case 1:
            statusStr = "bluePin.png"
        case 2:
            statusStr = "greenPin.png"
        default:
            statusStr = "redPin.png"
        }
        
        mapPin.statusPinImageName = statusStr
    }
}
