//
//  WeatherData.swift
//  Clima
//
//  Created by Aaron Lee on 9/12/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData: Decodable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Decodable {
    let temp: Float
}

struct Weather: Decodable {
    let main: String
    let description: String
}
