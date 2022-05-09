//
//  CityDetailViewController.swift
//  Meterologize
//
//  Created by Karl Pfister on 8/19/21.
//

import UIKit

class CityDetailViewController: UIViewController {

    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var currentStatusLabel: UILabel!
    @IBOutlet weak var currentTempLabel: UILabel!
    @IBOutlet weak var projectedHighLabel: UILabel!
    @IBOutlet weak var projectedLowLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CityController.createCity(name: "New New Mexico", temp: 103.2, high: 113, low: 98, status: "Super sunny!")
        updateViews()
        // Do any additional setup after loading the view.
    }
    
    func updateViews() {
        guard let city = CityController.cities.first else {return}
        self.view.backgroundColor = city.currentTemp <= 80.0 ? .cyan : .red
        cityNameLabel.text = city.name
        currentStatusLabel.text = city.currentStatus
        currentTempLabel.text = "\(city.currentTemp)F"
        projectedHighLabel.text = "High: \(city.dailyHigh)"
        projectedLowLabel.text = "Low: \(city.dailyHigh)"
    }
}
