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
        
        let city = CityController.cities.first
        cityNameLabel.text = city?.name
        currentStatusLabel.text = city?.currentStatus
        currentTempLabel.text = city?.currentStatus.description
        projectedHighLabel.text = city?.dailyHigh.description
        projectedLowLabel.text = city?.dailyLow.description
    }
}
