//
//  Landmark.swift
//  WeatherApp
//
//  Created by Dipprokash sardar on 29/12/23.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark:Hashable,Codable{
    var id: Int
    var name: String
    var park :String
    var state: String
    var description: String
    
    private var imageName:String
    var image: Image{
        Image(imageName)
    }
    
    private var coordinates: Coordiantes
    var locationCoordinates:CLLocationCoordinate2D{
        CLLocationCoordinate2D(
            latitude: coordinates.latitude, longitude: coordinates.longitude
        )
    }
    struct Coordiantes: Hashable, Codable{
        var latitude:Double
        var longitude: Double
    }
    
}
