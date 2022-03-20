//
//  ViewController.swift
//  UIKitApp
//
//  Created by Ян Таше on 20.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var segmentedControl: UISegmentedControl!
    @IBOutlet var labelFirst: UILabel!
    @IBOutlet var slider: UISlider!
    @IBOutlet var textField: UITextField!
    @IBOutlet var button: UIButton!
    @IBOutlet var datePicker: UIDatePicker!
    @IBOutlet var switcher: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: segmentedControl
        segmentedControl.insertSegment(withTitle: "Third", at: 2, animated: false)
        
        //MARK: label
        labelFirst.text = ""
        labelFirst.font = labelFirst.font.withSize(30)
        labelFirst.textAlignment = .center
        labelFirst.numberOfLines = 2
        
        //MARK: slider
        slider.value = 1
        slider.minimumValue = 1
        slider.maximumValue = 100
        slider.minimumTrackTintColor = .yellow
        slider.maximumTrackTintColor = .brown
        slider.thumbTintColor = UIColor(red: 255/255, green: 0/255, blue: 0/255, alpha: 1)
        
        //MARK: button
        button.layer.cornerRadius = 10
        button.setTitle("Готово", for: .normal)
        
        //MARK: datePicker
    }

    @IBAction func segmentedControlAction(_ sender: Any) {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            labelFirst.text = "Выбран 0 - й сегмент"
            labelFirst.textColor = .red
        case 1:
            labelFirst.text = "Выбран 1 - й сегмент"
            labelFirst.textColor = .blue
        case 2:
            labelFirst.text = "Выбран 2 - й сегмент"
            labelFirst.textColor = .green
        default:
            break
        }
    }
    
    @IBAction func sliderScrolling(_ sender: Any) {
        labelFirst.text = String(Int(slider.value))
    }
    
    @IBAction func buttonAction(_ sender: Any) {
        guard let text = textField.text, !text.isEmpty else { return }
            labelFirst.text = text
        }
    
    @IBAction func datePickerAction(_ sender: Any) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .full
        labelFirst.text = dateFormatter.string(from: datePicker.date)
    }
    
    @IBAction func switchToggle(_ sender: Any) {
        segmentedControl.isHidden = !switcher.isOn
        labelFirst.isHidden = !switcher.isOn
        slider.isHidden = !switcher.isOn
        textField.isHidden = !switcher.isOn
        button.isHidden = !switcher.isOn
        datePicker.isHidden = !switcher.isOn
    }
}

