//
//  sitesTableViewController.swift
//  Specs
//
//  Created by Reuscher,Elicia R on 4/18/18.
//  Copyright © 2018 Reuscher,Elicia R. All rights reserved.
//

import UIKit

class moodTableViewController: UITableViewController {
    
    //Listing all selectable moods to be displayed
    let mood = ["Funny", "Romantic", "Sad", "Fearless", "Exhilarated", "Animated"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Allocates the required amount of rows to hold all selectable options
        return mood.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "test")!
        cell.textLabel?.text = mood[indexPath.row]
        return cell
    }
    
    
    
//    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Changes mood in the Model class based upon user selection
        let myModel = AppDelegate.myModel
        if indexPath.row == 0 {
            myModel!.mood = "Funny"
        }
        else if indexPath.row == 1 {
            myModel!.mood = "Romantic"
        }
        else if indexPath.row == 2 {
            myModel!.mood = "Sad"
        }
        else if indexPath.row == 3{
            myModel!.mood = "Fearless"
        }
        else if indexPath.row == 4{
            myModel!.mood = "Exhilarated"
        }
        else if indexPath.row == 5{
            myModel!.mood = "Animated"
        }
    }
    
}
