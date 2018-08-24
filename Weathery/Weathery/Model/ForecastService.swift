//
//  ForecastService.swift
//  Weathery
//
//  Created by m1x on 8/17/18.
//  Copyright © 2018 m1x. All rights reserved.
//

import Foundation

class ForecastService
{
    let forecastAPIKey: String
    let forecastBaseURL: URL?
    // forecastBaseURL/forecastAPIKey/latitude,longitude
    
    init(APIKey: String)
    {
        self.forecastAPIKey = APIKey
        forecastBaseURL = URL(string: "https://api.darksky.net/forecast/\(APIKey)")
    }
    
    func getForecast(latitude: Double, longitude: Double, completion: @escaping (CurrentWeather?) -> Void)
    {
        if let forecastURL = URL(string: "https://api.darksky.net/forecast/867b8aaae91034b925e235250f9de984/37.8267,-122.4233") {
            
            let networkProcessor = NetworkProcessor(url: forecastURL)
            networkProcessor.downloadJSONFromURL (completion: { (jsonDictionary) in
                
                if let currentWeatherDictionary = jsonDictionary?["currently"] as?
                    [String : Any] {
                    let currentWeather = CurrentWeather(weatherDictionary: currentWeatherDictionary)
                    completion(currentWeather)
                    
                } else {
                    completion(nil)
                }
            })
            
        }
    }
}




























