//
//  ThirdViewController.swift
//  Specs
//
//  Created by Reuscher,Elicia R on 4/2/18.
//  Copyright © 2018 Reuscher,Elicia R. All rights reserved.
//

import UIKit
import Parse

class ThirdViewController: UIViewController {

    @IBOutlet weak var suggestionsLBL: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let myModel = AppDelegate.myModel
        
  
    }
    
    func displayOKAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message:
            message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK",
                                      style: .default, handler: nil))
        
        self.present(alert, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    }





