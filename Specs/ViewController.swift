//
//  ViewController.swift
//  Specs
//
//  Created by Reuscher,Elicia R on 2/14/18.
//  Copyright © 2018 Reuscher,Elicia R. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var userTF: UITextField!
    
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBAction func logIn(_ sender: Any) {
        //For this action button, it should take the Username and Password on file and check to make sure the credentials are correct.
    }
    
    @IBAction func signUp(_ sender: Any) {
        //For this sign up button, when clicked, it will take the user to a new view so they can create an account
    }
    
    
    
}

