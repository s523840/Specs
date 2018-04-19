//
//  sitesTableViewController.swift
//  Specs
//
//  Created by Reuscher,Elicia R on 4/18/18.
//  Copyright © 2018 Reuscher,Elicia R. All rights reserved.
//

import UIKit

class TVShowTableViewController: UITableViewController {
    
        // Listing all possible tv shows for the user to select from
        let tvShows = ["True Dectective", "The World at War", "The Wire", "The Twilight Zone", "The Sopranos", "The Civil War", "Sherlock","Rick and Morty", "Planet Earth", "Planet Earth II", "Life", "Last Week Tonight with John Oliver", "Human Planet", "Game of Thrones", "Fullmetal Alchemist:Brotherhood", "Firefly", "Fargo", "Dekalog", "Cosmos", "Breaking Bad", "Blue Planet II", "Batman:The animated series", "Band of Brothers", "Avatar: The Last Airbender" ]
    
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
        // Allocating the number of rows needed to display all options available for the user to select
        return tvShows.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tvShow")!
        cell.textLabel?.text = tvShows[indexPath.row]
        return cell
    }
    
    
    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Adds tv shows to the tvShows array in the Model class
        let myModel = AppDelegate.myModel
        if indexPath.row == 0 {
            myModel!.addTVShow(show: "True Dectective")
        }
        else if indexPath.row == 1 {
            myModel!.addTVShow(show: "The World at War")
        }
        else if indexPath.row == 2 {
            myModel!.addTVShow(show: "The Wire")
        }
        else if indexPath.row == 3 {
            myModel!.addTVShow(show: "The Twilight Zone")
        }
        else if indexPath.row == 4{
            myModel!.addTVShow(show: "The Sopranos")
        }
        else if indexPath.row == 5 {
            myModel!.addTVShow(show: "The Civil War")
        }
        else if indexPath.row == 6 {
            myModel!.addTVShow(show: "Sherlock")
        }
        else if indexPath.row == 7 {
            myModel!.addTVShow(show: "Rick and Morty")
        }
        else if indexPath.row == 8 {
            myModel!.addTVShow(show: "Planet Earth")
        }
        else if indexPath.row == 9 {
            myModel!.addTVShow(show: "Planet Earth II")
        }
        else if indexPath.row == 10 {
            myModel!.addTVShow(show: "Life")
        }
        else if indexPath.row == 11 {
            myModel!.addTVShow(show: "Last Week Tonight with John Oliver")
        }
        else if indexPath.row == 12 {
            myModel!.addTVShow(show: "Human Planet")
        }
        else if indexPath.row == 13 {
            myModel!.addTVShow(show: "Game of Thrones")
        }
        else if indexPath.row == 14 {
            myModel!.addTVShow(show: "Fullmetal Alchemist:Brotherhood")
        }
        else if indexPath.row == 15 {
            myModel!.addTVShow(show: "Firefly")
        }
        else if indexPath.row == 16 {
            myModel!.addTVShow(show: "Fargo")
        }
        else if indexPath.row == 17 {
            myModel!.addTVShow(show: "Dekalog")
        }
        else if indexPath.row == 18 {
            myModel!.addTVShow(show: "Cosmos")
        }
        else if indexPath.row == 19 {
            myModel!.addTVShow(show: "Breaking Bad")
        }
        else if indexPath.row == 20 {
            myModel!.addTVShow(show: "Blue Planet II")
        }
        else if indexPath.row == 21 {
            myModel!.addTVShow(show: "Batman: The animated series")
        }
        else if indexPath.row == 22 {
            myModel!.addTVShow(show: "Band of Brothers")
        }
        else if indexPath.row == 23 {
            myModel!.addTVShow(show: "Avatar: The Last Airbender")
        }

        

    }
    
}
