//
//  SecondViewController.swift
//  Specs2.0
//
//  Created by Becthold,Robert A on 3/28/18.
//  Copyright © 2018 Becthold,Robert A. All rights reserved.
//

import UIKit
import Parse

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let myModel = AppDelegate.myModel
        streamingLBL.text=""
        for i in 0..<myModel!.streamingSites.count {
            streamingLBL.text? += myModel!.streamingSites[i]+"\n"
        }
        showsLBL.text=""
        for i in 0..<myModel!.tvShows.count {
            showsLBL.text? += myModel!.tvShows[i]+"\n"
        }
        let query = PFQuery(className:"Users")
        query.getObjectInBackground(withId: "gIFsjtaI2I") { (object, error) -> Void in
            if error == nil && object != nil {
                print("worked")
                self.favLBL.text = (object!["FavoriteMovie"] as! String)
            }
            else{
                print("oops")
                print(error as Any)
            }
            
        }
        
        
        // Do any additional setup after loading the view, typically from a nib.
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
    
    
    @IBAction func moviesWatched(_ sender: Any) {
        //Will show what movies user has been watching
        let query = PFQuery(className:"Movies")
        query.getObjectInBackground( withId: "r6grCFQLra"){
            (Title: PFObject?, error: Error?)-> Void in
            if error == nil && Title != nil {
                print("worked")
                print(Title)
            }
            else{
                print("oops")
                print(error)
            }
            }
        
    

        }
    
    @IBOutlet weak var showsLBL: UILabel!
    
    @IBOutlet weak var moviesLBL: UILabel!
    @IBOutlet weak var streamingLBL: UILabel!
    @IBOutlet weak var favLBL: UILabel!
    
}


