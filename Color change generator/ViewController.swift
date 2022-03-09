//
//  ViewController.swift
//  Color change generator
//
//  Created by Tatiana Sosina on 09.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var backgroundView: UIView!
    
    @IBOutlet weak var redChangeValueLabel: UILabel!
    @IBOutlet weak var greenChangeValueLabel: UILabel!
    @IBOutlet weak var blueChangeValueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundView.layer.cornerRadius = 21
        changeBackgrounColorView()
    }

    @IBAction func changeColorSlider() {
        setDefaultSettingsChangeColor()
    }
    
    private func changeBackgrounColorView() {
        setDefaultSettingsChangeColor()
    }
    
    private func setDefaultSettingsChangeColor() {
        redChangeValueLabel.text = String(format: "%.2f", redSlider.value)
        greenChangeValueLabel.text = String(format: "%.2f", greenSlider.value)
        blueChangeValueLabel.text = String(format: "%.2f", blueSlider.value)
        
        backgroundView.backgroundColor = .init(red: CGFloat(redSlider.value),
                                               green: CGFloat(greenSlider.value),
                                               blue: CGFloat(blueSlider.value),
                                               alpha: 1)
    }
    
    
    
    
}

