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
        var image = UIImage(named: "app_icon")
        image = resizeImageWithAspect(image: image!, targetSize: CGSize(width: 20, height: 20))
        slider.setThumbImage(image, for: .normal)
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
    
    func resizeImage(image: UIImage, targetSize: CGSize) -> UIImage? {
        let renderer = UIGraphicsImageRenderer(size: targetSize)
        return renderer.image { _ in
            image.draw(in: CGRect(origin: .zero, size: targetSize))
        }
    }
    
    func resizeImageWithAspect(image: UIImage, targetSize: CGSize) -> UIImage? {
        let widthRatio = targetSize.width / image.size.width
        let heightRatio = targetSize.height / image.size.height
        let scale = min(widthRatio, heightRatio) // Aspect Fit
        let newSize = CGSize(width: image.size.width * scale, height: image.size.height * scale)

        return resizeImage(image: image, targetSize: newSize)
    }
}

