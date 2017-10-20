//
//  CreateAccountViewController.swift
//  LoginForm
//
//  Created by Michael Charland on 2017-10-17.
//  Copyright © 2017 charland. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    @IBOutlet weak var emailAddressTextField: UITextField!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var createButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func createButton(_ sender: Any) {
    }
    @IBAction func cancelButton(_ sender: Any) {
    }
    @IBAction func userNameDidEndOnExit(_ sender: Any) {
    }
    @IBAction func passwordDidEndOnExit(_ sender: Any) {
    }
    @IBAction func confirmPasswordDidEndOnExit(_ sender: Any) {
    }
    @IBAction func emailAddressDidEndOnExit(_ sender: Any) {
    }
}

extension CreateAccountViewController: UITextFieldDelegate {

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return true
    }
}
