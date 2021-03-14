//
//  ViewController.swift
//  HowToRemoveBackgroundColorOfPickerView
//
//  Created by APPLE on 2021/03/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension ViewController: UIPickerViewAccessibilityDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 10
    }

    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        let numberLabel = UILabel()
        numberLabel.textAlignment = .center
        numberLabel.font = .systemFont(ofSize: 24, weight: .bold)
        numberLabel.textColor = .systemBlue
        numberLabel.text = "\(row)"
        
        return numberLabel
    }
}

