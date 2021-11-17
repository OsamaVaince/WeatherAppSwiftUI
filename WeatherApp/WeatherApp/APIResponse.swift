//
//  APIResponse.swift
//  WeatherApp
//
//  Created by Osama Vaince on 11/16/21.
//

import Foundation

struct APIResponse : Decodable {
    let name: String
    let main: APIMain
    let weather: [APIWeather]
}
