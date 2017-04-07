//
//  Location.swift
//  rainyshiny
//
//  Created by Piotr Piotrowski on 07/04/2017.
//  Copyright © 2017 Piotr Piotrowski. All rights reserved.
//

import Foundation

class Location {
    static var  sharedInstance = Location()
    private init() {}
    
    var latitude: Double!
    var longitude: Double!
}
