//
//  ViewController.swift
//  UpDownGame
//
//  Created by lee sang hyun on 12/7/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var slider: UISlider!
    @IBOutlet var currentSliderValue: UILabel!

    private let sliderDefaultValue: Float = 15
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func valueChanged(_ sender: UISlider) {
        print(sender.value)
        currentSliderValue.text = String(Float(sender.value))
    }
    
    @IBAction func touchInHitButton(_ sender: UIButton) {
        print(slider.value)
    }
    
    @IBAction func touchResetButton(_ sender: UIButton) {
        slider.value = sliderDefaultValue
    }
}

