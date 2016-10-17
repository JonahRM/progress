//
//  ViewController.swift
//  progress
//
//  Created by Jonah May on 10/17/16.
//  Copyright © 2016 Progress Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    //MARK: Properties

    @IBOutlet weak var thoughtsTextField: UITextField!
    @IBOutlet weak var thoughtsNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        thoughtsTextField.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //MARK:UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //hide the keyboard upon hitting done
        textField.resignFirstResponder()
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        thoughtsNameLabel.text = thoughtsTextField.text
    }
    //MARK:Actions
    
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        thoughtsNameLabel.text = "Default Text"
    }

}

