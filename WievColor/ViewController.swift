//
//  ViewController.swift
//  WievColor
//
//  Created by Rimma Katushina on 30.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var redColor:Float = 0.0
    var greenColor:Float = 0.0
    var blueColor:Float = 0.0
    
    
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
        viewColorize()
    }
    
    // - MARK: - IB Actions

    
    @IBAction func redColorSliderAction() {
formatSlider(label: redColorLabel, slider: redColorSlider)
        redColor = redColorSlider.value
        viewColorize()
    }
    
    @IBAction func greenColorSliderAction() {
        formatSlider(label: greenColorLabel, slider: greenColorSlider)
        greenColor = greenColorSlider.value
        viewColorize()
    }
    
    @IBAction func blueColorSliderAction() {
        formatSlider(label: blueColorLabel, slider: blueColorSlider)
        blueColor = blueColorSlider.value
        viewColorize()
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
    
    // MARK: - Methods
    
    
    private func viewColorize(){
        viewColor.backgroundColor = UIColor(red: CGFloat(redColor),
                                            green: CGFloat(greenColor),
                                            blue: CGFloat(blueColor), alpha: 1.0)
    }
    
    
}
