//
//  ViewController.swift
//  LessonHW2
//
//  Created by Max Stovolos on 6/28/22.
//

import UIKit

class ViewController: UIViewController {
// MARK: - IBOutlets
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redLable: UILabel!
    @IBOutlet weak var greenLable: UILabel!
    @IBOutlet weak var blueLable: UILabel!
    
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var redSlider: UISlider!
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpSliders()
        setUpView()
        redSliderAction()
        // Do any additional setup after loading the view.
    }
}
    // MARK: - Private Extantion
    extension ViewController {
        private func setUpSliders(){
        redSlider.value = 1
            redSlider.minimumValue = 0
            redSlider.maximumValue = 1
            redSlider.maximumTrackTintColor = .white
            redSlider.minimumTrackTintColor = .red
            redSlider.thumbTintColor = .white
            
 
            greenSlider.value = 1
            greenSlider.minimumValue = 0
            greenSlider.maximumValue = 1
            greenSlider.minimumTrackTintColor = .green
            greenSlider.maximumTrackTintColor = .white
            greenSlider.thumbTintColor = .white
            
            blueSlider.value = 1
            blueSlider.minimumValue = 0
            blueSlider.maximumValue = 1
            blueSlider.maximumTrackTintColor = .white
            blueSlider.minimumTrackTintColor = .blue
            blueSlider.thumbTintColor = .white
            
            redLable.text = String(format:"%.2f" ,redSlider.value)
            greenLable.text = String(greenSlider.value)
            blueLable.text = String(blueSlider.value)
        }
        private func setUpView() {
            colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value) ,
                                                green: CGFloat(greenSlider.value),
                                                blue: CGFloat(blueSlider.value),
                                                alpha: 1)
        }
    }
// MARK: - Action
extension ViewController {
    @IBAction func redSliderAction() {
        redLable.text = String(format: "%.2f", redSlider.value)
        setUpView()
    }
    
    @IBAction func greenSliderAction() {
        greenLable.text = String(format: "%.2f", greenSlider.value)
        setUpView()
    }
    
    @IBAction func blueSliderAction() {
        blueLable.text = String(format: "%.2f", blueSlider.value)
        setUpView()
    }
}

