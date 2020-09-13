//
//  ViewController.swift
//  Clima
//
//  Created by Angela Yu on 01/09/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit
import CoreLocation

class WeatherViewController: UIViewController {

    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var searchTextField: UITextField!
    
    var weatherManager = WeatherManager()
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.locationManager.delegate = self
        self.locationManager.requestWhenInUseAuthorization()
        self.locationManager.requestLocation()
        
        self.weatherManager.delegate = self
        self.searchTextField.delegate = self
    }
    
}

//MARK: - UITextFieldDelegate

extension WeatherViewController: UITextFieldDelegate {
    @IBAction func searchPressed(_ sender: UIButton) {
        self.searchTextField.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == self.searchTextField {
            self.searchTextField.endEditing(true)
            return true
        }
        
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField == self.searchTextField {
            if (self.searchTextField.text != "") {
                // Do Something
                self.weatherManager.fetchWeather(cityName: self.searchTextField.text!)
                return true
            } else {
                self.searchTextField.placeholder = "Type Something"
                return false
            }
        }
        
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == self.searchTextField {
            self.searchTextField.text = ""
            self.searchTextField.placeholder = "Search"
        }
    }
    
}

//MARK: - WeatherManagerDelegate

extension WeatherViewController: WeatherManagerDelegate {
    func didUpdateWeather(_ weatherManager: WeatherManager, weatherModel: WeatherModel) {
        DispatchQueue.main.async {
            self.cityLabel.text = weatherModel.name
            self.temperatureLabel.text = weatherModel.tempString
            self.conditionImageView.image = UIImage(systemName: weatherModel.idString)
        }
    }
    
    func didFailWithError(error: Error) {
        // error handle
        print(error)
    }
    
}

//MARK: - CLLocationManagerDelegate

extension WeatherViewController: CLLocationManagerDelegate {
    @IBAction func currentLocationPressed(_ sender: UIButton) {
        self.locationManager.requestLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        // fetch weather
        if let location = locations.last {
            let lon = location.coordinate.longitude
            let lat = location.coordinate.latitude
            self.weatherManager.fetchWeather(lon: lon, lat: lat)
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
    }
}
