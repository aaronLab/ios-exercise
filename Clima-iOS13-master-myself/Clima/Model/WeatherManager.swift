//
//  WeatherManager.swift
//  Clima
//
//  Created by Aaron Lee on 9/13/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation
import CoreLocation

protocol WeatherManagerDelegate {
    func didUpdateWeather(_ weatherManager: WeatherManager, weatherModel: WeatherModel)
    func didFailWithError(error: Error)
}

struct WeatherManager {
    var delegate: WeatherManagerDelegate?
    
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=1d608e7c427c5ef6792c3bd9269d5c51&units=metric"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(self.weatherURL)&q=\(cityName)"
        self.requestWeather(urlString)
    }
    
    func fetchWeather(lon longitude: CLLocationDegrees, lat latitude: CLLocationDegrees) {
        let urlString = "\(self.weatherURL)&lon=\(longitude)&lat=\(latitude)"
        self.requestWeather(urlString)
    }
    
    func requestWeather(_ urlString: String) {
        if let url = URL(string: urlString) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    // error handle
                    self.delegate?.didFailWithError(error: error!)
                    return
                }
                if let safeData = data {
                    if let weather = self.decodeJSON(safeData) {
                        self.delegate?.didUpdateWeather(self, weatherModel: weather)
                    }
                }
            }
            task.resume()
        }
    }
    
    func decodeJSON(_ weatherData: Data) -> WeatherModel? {
        let decoder = JSONDecoder()
        
        do {
            let jsonData = try decoder.decode(WeatherData.self, from: weatherData)
            let name = jsonData.name
            let temp = jsonData.main.temp
            let weatherId = jsonData.weather[0].id
            
            let weather = WeatherModel(name: name, temp: temp, id: weatherId)
            
            return weather
        } catch {
            // error handle
            self.delegate?.didFailWithError(error: error)
            return nil
        }
    }
    
}
