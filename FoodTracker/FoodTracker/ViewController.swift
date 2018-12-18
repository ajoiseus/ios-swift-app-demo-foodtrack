//
//  ViewController.swift
//  FoodTracker
//
//  Created by Alexander Joiseus on 12/17/18.
//  Copyright © 2018 Alexander Joiseus. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: Properties
    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var setDefaultLabelText: UIButton!
    //@IBOutlet weak var nameTextField: UITextField!
    //@IBOutlet weak var mealNameLabel: UILabel!
    //@IBOutlet weak var setDefaultLabelText: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Handle the text field's user input throgh delegate callbacks
        nameTextField.delegate = self
    }
    //MARK: UITextFieldDelegate
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabel.text = textField.text
    }
    
}

