//
//  CurrentWeatherViewController.swift
//  Weathery
//
//  Created by m1x on 8/17/18.
//  Copyright © 2018 m1x. All rights reserved.
//

import UIKit

class CurrentWeatherViewController: UIViewController {

    @IBOutlet weak var cityTextLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var smileLabel: UILabel!
    @IBOutlet weak var weatherIcon: UIImageView!
    
    //Testing data
    let forecastAPIKey = "867b8aaae91034b925e235250f9de984"
    let coordinate: (lat: Double, long: Double) = (37.8267, -122.4233)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let forecastService = ForecastService(APIKey: forecastAPIKey)
        forecastService.getForecast(latitude: coordinate.lat, longitude: coordinate.long) { (currentWeather) in
            
            if let currentWeather = currentWeather {
                
                DispatchQueue.main.async {
                    if var temperature = currentWeather.temperature {
                        temperature = ((temperature - 32) * 5) / 9
                        self.temperatureLabel.text = "\(temperature)"
                    } else {
                        self.temperatureLabel.text = "26"
                    }
                }
                
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

}
