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

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
    
    @IBAction func suggestion(_ sender: Any) {
        //Will take users mood and suggest a movie and/or tv show
    }
    
    @IBAction func friendsViewing(_ sender: Any) {
        //Will show what friends of user are watching
    }
    
    @IBAction func popular(_ sender: Any) {
        //Will show what's popular
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
