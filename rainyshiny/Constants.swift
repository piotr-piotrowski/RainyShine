//
//  Constants.swift
//  rainyshiny
//
//  Created by Piotr Piotrowski on 06/04/2017.
//  Copyright © 2017 Piotr Piotrowski. All rights reserved.
//

import Foundation

let BASE_URL = "http://samples.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGTITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "227dcbb69ff860d5d963fee267354564"

let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)-36\(LONGTITUDE)123\(APP_ID)\(API_KEY)"
