//
//  ViewController.swift
//  TConverter
//
//  Created by Никита Коголенок on 25.11.20.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - Outlet
    @IBOutlet weak var cenliusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var sliderForCInF: UISlider! {
        didSet {
            sliderForCInF.maximumValue = 100
            sliderForCInF.minimumValue = 0
            sliderForCInF.value = 0
        }
    }
    @IBOutlet weak var cenliusLabel1: UILabel!
    @IBOutlet weak var kelvinLabel: UILabel!
    @IBOutlet weak var sliderForCInK: UISlider! {
        didSet {
            sliderForCInK.maximumValue = 100
            sliderForCInK.minimumValue = 0
            sliderForCInK.value = 0
        }
    }
    // MARK: - Action
    @IBAction func sliderChangedForCInF(_ sender: UISlider) {
        let temperatureCelsius = Int(round(sender.value))
        cenliusLabel.text = "\(temperatureCelsius)ºC"
        let fahrenheitTemperature = Int(round((sender.value * 9 / 5) + 32))
        fahrenheitLabel.text = "\(fahrenheitTemperature)ºF"
    }
    
    @IBAction func sliderChangedForCInK(_ sender: UISlider) {
        let temperatureCelsius1 = Int(round(sender.value))
        cenliusLabel1.text = "\(temperatureCelsius1)ºC"
        let kelvinTemperature = Int(round(sender.value + 273))
        kelvinLabel.text = "\(kelvinTemperature)ºK"
    }
}
