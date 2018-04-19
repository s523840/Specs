//
//  sitesTableViewController.swift
//  Specs
//
//  Created by Reuscher,Elicia R on 4/18/18.
//  Copyright © 2018 Reuscher,Elicia R. All rights reserved.
//

import UIKit

class sitesTableViewController: UITableViewController {
    
    // Listing all selectable streaming sites for the user to choose from
    let streamingSites = ["Netflix", "Hulu", "Amazon"]
    
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
        // Allocates the correct number of rows to hold all possible streaming sites
        return streamingSites.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier")!
        cell.textLabel?.text = streamingSites[indexPath.row]
        return cell
    }
    

    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Adds a streaming site to the streamingSites array in the Model class based upon user selection
        let myModel = AppDelegate.myModel
        if indexPath.row == 0 {
            myModel!.addSite(site:"Netflix")
        }
        else if indexPath.row == 1 {
            myModel!.addSite(site:"Hulu")
        }
        else if indexPath.row == 2 {
            myModel!.addSite(site:"Amazon")
        }
    }

}
