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

    @IBOutlet weak var movieSuggestionLBL: UILabel!
    @IBOutlet weak var movieSuggestion2LBL: UILabel!
    
    @IBOutlet weak var tvSuggestionLBL: UILabel!
    @IBOutlet weak var tvSuggestion2LBL: UILabel!
    
    @IBOutlet weak var popularMoviesLBL: UILabel!
    @IBOutlet weak var popularTv: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let myModel = AppDelegate.myModel
        
        if myModel!.mood == "Sad"{
            //movies
            let query1 = PFQuery(className:"Movies")
            query1.getObjectInBackground(withId: "y0iRxSYFRe") { (object, error) -> Void in
                if error == nil && object != nil {
                    print("worked")
                    self.movieSuggestionLBL.text = (object!["Title"] as! String) //first box, movie
                }
                else{
                    print("oops")
                    print(error as Any)
                }
            }
            let query2 = PFQuery(className:"Movies")
            query2.getObjectInBackground(withId: "KhhTi3UMB5") { (object, error) -> Void in
                if error == nil && object != nil {
                    print("worked")
                    self.movieSuggestion2LBL.text = (object!["Title"] as! String) //second box, movie
                }
                else{
                    print("oops")
                    print(error as Any)
                }
            }
            //Tv shows
            let query3 = PFQuery(className:"Shows")
            query3.getObjectInBackground(withId: "LrgxGWv2Ip") { (object, error) -> Void in
                if error == nil && object != nil {
                    print("worked")
                    self.tvSuggestionLBL.text = (object!["Title"] as! String) //third box, show
                }
                else{
                    print("oops")
                    print(error as Any)
                }
                
            }
            let query4 = PFQuery(className:"Shows")
            query4.getObjectInBackground(withId: "sk6wnBFZzP") { (object, error) -> Void in
                if error == nil && object != nil {
                    print("worked")
                    self.tvSuggestion2LBL.text = (object!["Title"] as! String) //fourth box, show
                }
                else{
                    print("oops")
                    print(error as Any)
                }
            }
        }
        
        //START OF MOVIE CRAP
        let moviequery = PFQuery(className:"Movies")
        moviequery.getObjectInBackground(withId: "y0iRxSYFRe") { (object, error) -> Void in
            if error == nil && object != nil {
                print("worked")
                self.popularMoviesLBL.text = (object!["Title"] as! String)
            }
            else{
                print("oops")
                print(error as Any)
            }
        }
//        let moviequery2 = PFQuery(className:"Movies")
//        moviequery2.getObjectInBackground(withId: "KhhTi3UMB5") { (object, error) -> Void in
//            if error == nil && object != nil {
//                print("worked")
//                print(object!["Title"] as! String)
//            }
//            else{
//                print("oops")
//                print(error as Any)
//            }
//        }
//        let moviequery3 = PFQuery(className:"Movies")
//        moviequery3.getObjectInBackground(withId: "jIxoGCI0pm") { (object, error) -> Void in
//            if error == nil && object != nil {
//                print("worked")
//                print(object!["Title"] as! String)
//            }
//            else{
//                print("oops")
//                print(error as Any)
//            }
//        }
        //END OF MOVIE CRAP
        //START OF TV CRAP
        let tvquery = PFQuery(className:"Shows")
        tvquery.getObjectInBackground(withId: "Nu2jIoicQM") { (object, error) -> Void in
            if error == nil && object != nil {
                print("worked")
                self.popularTv.text = (object!["Title"] as! String)
            }
            else{
                print("oops")
                print(error as Any)
            }
        }
        let tvquery2 = PFQuery(className:"Shows")
        tvquery2.getObjectInBackground(withId: "LrgxGWv2Ip") { (object, error) -> Void in
            if error == nil && object != nil {
                print("worked")
                print(object!["Title"] as! String)
            }
            else{
                print("oops")
                print(error as Any)
            }
        }
        
        let tvquery3 = PFQuery(className:"Shows")
        tvquery3.getObjectInBackground(withId: "wDWxGMKio5") { (object, error) -> Void in
            if error == nil && object != nil {
                print("worked")
                print(object!["Title"] as! String)
            }
            else{
                print("oops")
                print(error as Any)
            }
        }
        //END OF TV CRAP
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





