//
//  sitesTableViewController.swift
//  Specs
//
//  Created by Reuscher,Elicia R on 4/18/18.
//  Copyright © 2018 Reuscher,Elicia R. All rights reserved.
//

import UIKit

class moviesTableViewController: UITableViewController {
    
    //Listing all possible movies to be chosen in the customize scene
    let movies = ["12 Angry Men", "City of God", "Fight Club", "Forrest Gump", "Goodfellas", "Inception",
                  "It's a Wonderful Life", "Life is Beautiful", "One Flew Over the Cuckoo's Nest", "Pulp Fiction", "Schindler's List", "Se7en", "Seven Samurai", "Star Wars: Episode IV - A New Hope", "Star Wars: Episode V - The Empire Strikes Back", "The Dark Knight","The Godfather", "The Godfather: Part II", "The Good, the Bad, and the Ugly", "The Lord of the Rings: The Fellowship of the Ring", "The Lord of the Rings: The Return of the Key", "The Lord of the Rings: The Two Towers", "The Matrix", "The Shawshank Redemption", "The Silence of the Lambs"]
    
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
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Allocates the correct number of rows to hold all of the movie selections
        return movies.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movies")!
        cell.textLabel?.text = movies[indexPath.row]
        return cell
    }
    
    
    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        /*
        Adding movies to movies array in Model class based upon user selections
        */
        let myModel = AppDelegate.myModel
        if indexPath.row == 0 {
            myModel!.addMovies(movie: "12 Angry Men")
        }
        else if indexPath.row == 1 {
            myModel!.addMovies(movie: "City of God")
        }
        else if indexPath.row == 2 {
            myModel!.addMovies(movie: "Fight Club")
        }
        else if indexPath.row == 3 {
            myModel!.addMovies(movie: "Forest Gump")
        }
        else if indexPath.row == 4{
            myModel!.addMovies(movie: "GoodFellas")
        }
        else if indexPath.row == 5 {
            myModel!.addMovies(movie: "Inception")
        }
        else if indexPath.row == 6 {
            myModel!.addMovies(movie: "It's a Wonderful Life")
        }
        else if indexPath.row == 7 {
            myModel!.addMovies(movie: "Life is Beautiful")
        }
        else if indexPath.row == 8 {
            myModel!.addMovies(movie: "One Flew Over the Cuckoo's Nest")
        }
        else if indexPath.row == 9 {
            myModel!.addMovies(movie: "Pulp Fiction")
        }
        else if indexPath.row == 10 {
            myModel!.addMovies(movie: "Schindler's List")
        }
        else if indexPath.row == 11 {
            myModel!.addMovies(movie: "Se7en")
        }
        else if indexPath.row == 12 {
            myModel!.addMovies(movie: "Seven Samurai")
        }
        else if indexPath.row == 13 {
            myModel!.addMovies(movie: "Star Wars: Episode IV - A New Hope")
        }
        else if indexPath.row == 14 {
            myModel!.addMovies(movie: "Star Wars: Episode V - The Empire Strikes Back")
        }
        else if indexPath.row == 15 {
            myModel!.addMovies(movie: "The Dark Knight")
        }
        else if indexPath.row == 16 {
            myModel!.addMovies(movie: "The Godfather")
        }
        else if indexPath.row == 17 {
            myModel!.addMovies(movie: "The Godfather: Part II")
        }
        else if indexPath.row == 18 {
            myModel!.addMovies(movie: "The Good, the Bad, and the Ugly")
        }
        else if indexPath.row == 19 {
            myModel!.addMovies(movie: "The Lord of the Rings: The Fellowship of the Ring")
        }
        else if indexPath.row == 20 {
            myModel!.addMovies(movie: "The Lord of the Rings: The Return of the King")
        }
        else if indexPath.row == 21 {
            myModel!.addMovies(movie: "The Lord of the Rings: The Two Towers")
        }
        else if indexPath.row == 22 {
            myModel!.addMovies(movie: "The Matrix")
        }
        else if indexPath.row == 23 {
            myModel!.addMovies(movie: "The Shawshank Redemption")
        }
        else if indexPath.row == 24 {
            myModel!.addMovies(movie: "The Silence of the Lambs")
        }
        
        
        
    }
    
}

