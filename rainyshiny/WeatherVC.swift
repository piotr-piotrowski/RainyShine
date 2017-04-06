//
//  WeatherVC.swift
//  rainyshiny
//
//  Created by Piotr Piotrowski on 04/04/2017.
//  Copyright © 2017 Piotr Piotrowski. All rights reserved.
//

import UIKit

class WeatherVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var temperatureLbl: UILabel!
    @IBOutlet weak var locationLbl: UILabel!
    @IBOutlet weak var weatherImage: UIImageView!
    @IBOutlet weak var weatherTypeLbl: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var currentWeather = CurrentWeather()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        currentWeather.downloadWeatherDetails { 
            // Code to update UI
            self.updateMainUI()
        }
        
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "weatherCell", for: indexPath)
        
        return cell
    }
    
    func updateMainUI() {
        dateLbl.text = currentWeather.date
        temperatureLbl.text = "\(currentWeather.currentTemp)"
        weatherTypeLbl.text = currentWeather.weatherType
        locationLbl.text = currentWeather.cityName
        weatherImage.image = UIImage(named: currentWeather.weatherType)
    }
    
}

