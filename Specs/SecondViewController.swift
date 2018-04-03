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
    
    @IBAction func favorites(_ sender: Any) {
        //Will add favorites of user
    }
    
    @IBAction func currentlyWatching(_ sender: Any) {
        //Will show what user is currently watching
    }
    
    @IBAction func moviesWatched(_ sender: Any) {
        //Will show what movies user has been watching
    }
    
    @IBAction func tvShowsWatched(_ sender: Any) {
        //Will show what tv shows user has been watching
    }
    
    //Miscellaneous stuff we will probably need...
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

