//
//  ViewController.swift
//  UpDownGame
//
//  Created by lee sang hyun on 12/7/24.
//

import UIKit

class ViewController: UIViewController {
    // 슬라이더
    @IBOutlet weak var slider: UISlider!
    // 현재 슬라이더 값 표시 레이블
    @IBOutlet weak  var currentSliderValueLabel: UILabel!
    // 현재 시도 횟수 표시 레이블
    @IBOutlet weak var tryCountLabel: UILabel!
    // 슬라이더 최소값 표시 레이블
    @IBOutlet weak var minValueLabel: UILabel!
    // 슬라이더 최대값 표시 레이블
    @IBOutlet weak var maxValueLabel: UILabel!

    private let sliderDefaultValue: Float = 15
    private let sliderMinValue: Float = 0
    private let sliderMaxValue: Float = 30
    private var randomValue : Int = 0
    
    // 답 값
    private var tryCount : Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        reset()
        // Do any additional setup after loading the view.
        var image = UIImage(named: "app_icon")
        image = Util.resizeImageWithAspect(image: image!, targetSize: CGSize(width: 20, height: 20))
        slider.setThumbImage(image, for: .normal)
    }

    @IBAction func valueChanged(_ sender: UISlider) {
        print(sender.value)
        currentSliderValueLabel.text = String(Int(sender.value))
    }
    
    @IBAction func touchInHitButton(_ sender: UIButton) {
        print(slider.value)
        let hitValue = Int(slider.value)
        slider.value = Float(hitValue)
        setTryCount(tryCount+1)
        
        if randomValue == hitValue {
            print ("Hit!")
            reset()
        } else if tryCount >= 5 {
            print ("You Lose")
            reset()
        } else if(hitValue < randomValue) {
            minValueLabel.text = String(Int(hitValue))
            slider.minimumValue = Float(hitValue)
        } else if(hitValue > randomValue) {
            maxValueLabel.text = String(Int(hitValue))
            slider.maximumValue = Float(hitValue)
        }
        
    }
    
    @IBAction func touchResetButton(_ sender: UIButton) {
        slider.value = sliderDefaultValue
        reset()
    }
    
    func reset() {
        print("reset")
        randomValue = Int.random(in: 0...30)
        print("randomValue : \(randomValue)")
        setTryCount(0)
        slider.minimumValue = sliderMinValue
        slider.maximumValue = sliderMaxValue
        slider.value = Float(Int(slider.maximumValue / 2))
        minValueLabel.text = String(Int(slider.minimumValue))
        maxValueLabel.text = String(Int(slider.maximumValue))
        currentSliderValueLabel.text = String((slider.value))
    }
    
    
    private func setTryCount(_ count: Int) {
        tryCount = count
        tryCountLabel.text = "\(tryCount) / 5"
    }
}

