//
//  ViewController.swift
//  WievColor
//
//  Created by Rimma Katushina on 30.10.2022.
//

import UIKit

class ViewController: UIViewController {
// - MARK: - IB Outlets
    
    @IBOutlet var viewColor: UIView!
    
    @IBOutlet var redColorSlider: UISlider!
    @IBOutlet var greenColorSlider: UISlider!
    @IBOutlet var blueColorSlider: UISlider!
    
    @IBOutlet var redColorLabel: UILabel!
    @IBOutlet var greenColorLabel: UILabel!
    @IBOutlet var blueColorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewColor.layer.cornerRadius = 32
        setupSlider(slider: redColorSlider)
        setupSlider(slider: blueColorSlider)
        setupSlider(slider: greenColorSlider)
//        setupLabelValue(label: redColorLabel, slider: redColorSlider)
    }
    
    // - MARK: - IB Actions

    
    @IBAction func redColorSliderAction() {
formatSlider(label: redColorLabel, slider: redColorSlider)
    }
    
    @IBAction func greenColorSliderAction() {
        formatSlider(label: greenColorLabel, slider: greenColorSlider)
    }
    
    @IBAction func blueColorSliderAction() {
        formatSlider(label: blueColorLabel, slider: blueColorSlider)
    }
    
    
    
    // - MARK: - Private Methods
    
    private func setupSlider(slider: UISlider) {
        slider.value = 0.00
        slider.minimumValue = 0.00
        slider.maximumValue = 1.00
    }
    
    private func formatSlider(label: UILabel, slider: UISlider){
        label.text = String(format: "%.2f", slider.value)
    }
//    private func setupLabelValue(label: UILabel, slider: UISlider){
////        let x = slider.value
////        label.text = "\(slider.value)"
//
//    }
    
    // MARK: - Methods

}

