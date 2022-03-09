//
//  ViewController.swift
//  Color change generator
//
//  Created by Tatiana Sosina on 09.03.2022.
//

import UIKit

final class ViewController: UIViewController {
    
    // MARK: - Private property
    
    @IBOutlet weak private var backgroundView: UIView!
    
    @IBOutlet weak private var redChangeValueLabel: UILabel!
    @IBOutlet weak private var greenChangeValueLabel: UILabel!
    @IBOutlet weak private var blueChangeValueLabel: UILabel!
    
    @IBOutlet weak private var redSlider: UISlider!
    @IBOutlet weak private var greenSlider: UISlider!
    @IBOutlet weak private var blueSlider: UISlider!
    
    // MARK: - Internal func
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundView.layer.cornerRadius = 21
        changeBackgrounColorView()
    }
    
    // MARK: - Private func

    @IBAction private func changeColorSlider() {
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

