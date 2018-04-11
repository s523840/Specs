//
//  FirstViewController.swift
//  Specs2.0
//
//  Created by Becthold,Robert A on 3/28/18.
//  Copyright © 2018 Becthold,Robert A. All rights reserved.
//

import UIKit
import Parse

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
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
    
    @IBAction func basicInformation(_ sender: Any) {
        //Button that will store information about user
    }
    
    @IBAction func addStreaming(_ sender: Any) {
        //Hardcoding
        //Button that will add users streaming sites
    }
    
    @IBAction func addTVandMovies(_ sender: Any) {
        //This should show a list of movies where the user can select from
        //        let movie = Movie()
        //        movie.title = "Airplane"
        //        movie.year = 1978
        //        movie.producer = "Farly"
        //
        //        movie.saveInBackground(block: { (success, error) -> Void in
        //            if success {
        //                self.displayOKAlert(title: "Success!", message:"Movie saved.")
        //            } else {
        //                print(error as Any)
        //            }
        //        })
        
        //This button will store movies and tv shows entered in by user
    }
    
    @IBAction func mood(_ sender: Any) {
        //List of 
        //Will add mood from user and use this information for other data
    }
    
    //Miscellaneous stuff we will probably need but commenting out
    //or it'll break everything :) :)
    /*var movies:[Movie] = []
     @IBAction func fetch(sender:AnyObject) { //Fetching data
     let query = PFQuery(className:"Movie") // Fetches all the Movie objects
     query.findObjectsInBackground { // what happened to the ( ) ?
     (objects: [PFObject]?, error: Error?) -> Void in
     
     if error == nil {
     // The find succeeded.
     self.displayOKAlert(title: "Success!",
     message:"Retrieved \(objects!.count) objects.")
     self.movies = objects as! [Movie]
     // Do something with the found objects
     // Like display them in a table view.
     //self.moviesTV.reloadData()
     for movie in self.movies { //needed to put self.movies to let it know moives is not a part of the class
     print (movie.title)
     }
     } else {
     // Log details of the failure
     self.displayOKAlert(title: "Oops", message: "\(error!)")
     }
     }
     }
     
     
     @IBAction func fetchIf(sender:AnyObject) { //This function is fetching SOME data, not all like the function above
     let query = PFQuery(className:"Movie") // Fetches all the Movie objects
     query.order(byAscending: "title") //Ordering query by the title
     query.whereKey("year", greaterThan: 2000)//Fetching some specialized data
     query.findObjectsInBackground { // what happened to the ( ) ?
     (objects: [PFObject]?, error: Error?) -> Void in
     
     if error == nil {
     // The find succeeded.
     self.displayOKAlert(title: "Success!",
     message:"Retrieved \(objects!.count) objects.")
     self.movies = objects as! [Movie]
     // Do something with the found objects
     // Like display them in a table view.
     //self.moviesTV.reloadData()
     for movie in self.movies { //needed to put self.movies to let it know moives is not a part of the class
     print (movie.title)
     }
     } else {
     // Log details of the failure
     self.displayOKAlert(title: "Oops", message: "\(error!)")
     }
     }
     }
     
     @IBAction func remove(sender:AnyObject) { //Removing data
     if self.movies.count > 0{ //Added this to catch the error when you have reomved all the objects in the array
     let movieToGo = self.movies[0] //the index could be anything, we just picked 0. Must fetch first before removing another item.
     movieToGo.deleteInBackground(block:{
     (success,error) in
     self.displayOKAlert(title: "Success!",
     message:"So long, and thanks for all the fish")
     })
     }
     }
     
     
     @IBAction func addActor(sender:AnyObject) { //This function is taking from the relational data we created in the ParseManagedObjects.swift
     
     
     //This is copied from above
     let query = PFQuery(className:"Movie") // Fetches all the Movie objects
     query.order(byAscending: "title") //Ordering query by the title
     query.whereKey("year", greaterThan: 2000)//Fetching some specialized data
     query.findObjectsInBackground { // what happened to the ( ) ?
     (objects: [PFObject]?, error: Error?) -> Void in
     
     if error == nil {
     // The find succeeded.
     self.displayOKAlert(title: "Success!",
     message:"Retrieved \(objects!.count) objects.")
     self.movies = objects as! [Movie]
     // Do something with the found objects
     // Like display them in a table view.
     //self.moviesTV.reloadData()
     for movie in self.movies { //needed to put self.movies to let it know moives is not a part of the class
     print (movie.title)
     }
     let actor = Actor() //Created an actor object. Need this here so we know things were fetched
     actor.name = "Harrison Ford"
     actor.starredIn = self.movies //Associating the movie we fetch with the actor we created
     //Copied from above
     actor.saveInBackground(block: { (success, error) -> Void in
     if success {
     self.displayOKAlert(title: "Success!", message:"Movie saved.")
     }
     else {
     print(error as Any)
     }
     })
     }
     else {
     // Log details of the failure
     self.displayOKAlert(title: "Oops", message: "\(error!)")
     }
     }
     
     }
     
     */
    
    


}

