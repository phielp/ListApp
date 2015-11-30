//
//  SecondViewController.swift
//  Taskmanager
//
//  Created by Philip Bouman on 26-11-15.
//  Copyright © 2015 Philip Bouman. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    // Outlets
    @IBOutlet var txtTask: UITextField!
    @IBOutlet var txtDesc: UITextField!
    
    // Add task button
    @IBAction func btnClicked(sender: UIButton) {
        taskMgr.addTask(txtTask.text!, desc: txtDesc.text!)
        self.view.endEditing(true)
        txtTask.text = ""
        txtDesc.text = ""
        self.tabBarController?.selectedIndex = 0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    // close keyboard on touch outside keyboard
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
}

