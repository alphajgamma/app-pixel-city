//
//  Constants.swift
//  pixel-city
//
//  Created by Andrew Greenough on 30/08/2017.
//  Copyright © 2017 Andrew Greenough. All rights reserved.
//

import Foundation

let apiKey = "43af89ab1fc068ff6ffc7d6a543be27d"

func flickrUrl(forApiKey key: String, withAnnotation annotation: DroppablePin, andNumberOfPhotos number: Int) -> String {
    return "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(apiKey)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=1&radius_units=mi&per_page=\(number)&format=json&nojsoncallback=1"
}

