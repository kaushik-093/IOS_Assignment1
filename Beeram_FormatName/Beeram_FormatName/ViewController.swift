//
//  ViewController.swift
//  Beeram_FormatName
//
//  Created by Beeram,Sai Kaushik on 2/3/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
   
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var fullNameLabel: UILabel!
    
    @IBOutlet weak var initialsLabel: UILabel!
    
    @IBOutlet weak var detailsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onClickOfSubmit(_ sender: UIButton) {
        var FirstName = firstNameTextField.text!
        var LastName = lastNameTextField.text!
        fullNameLabel.text = "Full Name: \(LastName),\(FirstName)"
        initialsLabel.text = "\(FirstName[FirstName.startIndex])\(LastName[LastName.startIndex])"
        detailsLabel.text = "Details"
        
    }
    
    @IBAction func onClickOfReset(_ sender: UIButton) {
        
        firstNameTextField.text = ""
        lastNameTextField.text = ""
        fullNameLabel.text = ""
        initialsLabel.text = ""
        firstNameTextField.becomeFirstResponder()
        detailsLabel.text = ""
        
    }
    
}

