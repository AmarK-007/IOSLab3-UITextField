//
//  ViewController.swift
//  Lab3-UITextField
//
//  Created by Amarnath  Kathiresan on 2023-09-29.
//

import UIKit

class ViewController: UIViewController {
    
    /** Intialisation */
    @IBOutlet weak var textFieldFirstName: UITextField!
    @IBOutlet weak var textFieldLastName: UITextField!
    @IBOutlet weak var textFieldCountry: UITextField!
    @IBOutlet weak var textFieldAge: UITextField!
    @IBOutlet weak var textViewUserInfo: UITextView!
    @IBOutlet weak var labelValidatorMessage: UILabel!
    
    /** Add Button Controller */
    @IBAction func buttonAddController(_ sender: Any) {
        
        if inputValidator() == true {
            displayInfo()
        }
    }
    
    /** Submit Button Controller */
    @IBAction func buttonSubmitController(_ sender: Any) {
        if inputValidator() == true {
            displayInfo()
            labelValidatorMessage.textColor = UIColor.green
            labelValidatorMessage.text = String("Successfully Submitted!")
        }
    }
    
    /** Clear Button Controller */
    @IBAction func buttonClearController(_ sender: Any) {
        clearInput()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textViewUserInfo.isUserInteractionEnabled = false
    }
    
    /*** displayInfo Function - gathers all valid input and update in the info view  */
    func displayInfo(){
        textViewUserInfo.text = "User Info:\nFirst Name: \(textFieldFirstName.text!) \nLast Name: \(textFieldLastName.text!)\nCountry: \(textFieldCountry.text!) \nAge: \(textFieldAge.text!)"
    }
    
    /*** inputValidator Function - Validates all input fields and displays error if any  */
    func inputValidator() -> Bool {
        var isValidResult = false
        labelValidatorMessage.textColor = UIColor.red
        if textFieldFirstName.text?.isEmpty == true {
            labelValidatorMessage.text = String("Enter valid First Name")
        } else if textFieldLastName.text?.isEmpty == true {
            labelValidatorMessage.text = String("Enter valid Last Name")
        } else if textFieldCountry.text?.isEmpty == true {
            labelValidatorMessage.text = String("Enter valid Country")
        } else if textFieldAge.text?.isEmpty == true {
            labelValidatorMessage.text = String("Enter valid Age")
        } else {
            labelValidatorMessage.text = String("Click Submit to save info.")
            labelValidatorMessage.textColor = UIColor.orange
            isValidResult = true
            return isValidResult
        }
        return isValidResult
    }
    
    /*** clearInput Function - clears all input fields */
    func clearInput(){
        textFieldFirstName.text = String("")
        textFieldLastName.text = String("")
        textFieldCountry.text = String("")
        textFieldAge.text = String("")
        labelValidatorMessage.text = String("")
        textViewUserInfo.text = String("")
        labelValidatorMessage.text = String("")
        labelValidatorMessage.textColor = UIColor.black
    }
}

