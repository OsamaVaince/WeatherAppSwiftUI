//
//  Extension+WeatherService.swift
//  WeatherApp
//
//  Created by Osama Vaince on 11/17/21.
//

import CoreLocation
import Foundation

extension WeatherService: CLLocationManagerDelegate {
    public func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first else { return }
        makeDataRequest(forCoordinates:  location.coordinate)
    }
    
    public func loactionManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Something went wrong \(error.localizedDescription)")
    }
}

