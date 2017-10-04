//
//  Constants.swift
//  pixel-city
//
//  Created by Mac on 10/4/17.
//  Copyright © 2017 Mac. All rights reserved.
//

import Foundation

let API_KEY = "a6daccf8b0646984cf1700a7a12917e4"


func flickrUrl(forApiKey key: String, withAnnotation annotation: DroppablePin, andNumberOfPhotos number: Int) -> String {
    return "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(API_KEY)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=1&radius_units=mi&per_page=\(number)&format=json&nojsoncallback=1"
}
