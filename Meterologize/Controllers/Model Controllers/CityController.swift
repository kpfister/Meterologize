//
//  CityController.swift
//  Meterologize
//
//  Created by Karl Pfister on 8/19/21.
//

import Foundation

class CityController {
    
    static var cities: [City] = []
    
    static func createCity(name: String, temp: Double, high: Int, low: Int, status: String){
        let newCity = City(name: name, currentTemp: temp, dailyHigh: high, dailyLow: low, currentStatus: status)
        cities.append(newCity)
    }
}
