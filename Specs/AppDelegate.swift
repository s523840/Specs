//
//  AppDelegate.swift
//  Specs
//
//  Created by Reuscher,Elicia R on 2/14/18.
//  Copyright © 2018 Reuscher,Elicia R. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    //Movie Instances
    //Will consider using an array and functions to make the instances "cleaner" looking
    //Maybe change genre from type String to an array of String
    static var movieInstance1:Movie = Movie.init(id: 1, title: "Atomic Blonde ", director: "David Leitch", genre: "Action, Mystery, Thriller", release: "28 July 2017", starActors: ["Charlize Theron", "James McAvoy", "John Goodman"], description: "An undercover MI6 agent is sent to Berlin during the Cold War to investigate the murder of a fellow agent and recover a missing list of double agents.", rating: 7)
    
    static var movieInstance2:Movie = Movie.init(id: 2, title: "Jeepers Creepers", director: "Victor Salva", genre: "Horror, Mystery", release: "31 August 2001", starActors: ["Gina Philips", "Justin Long", "Jonathan Breck"], description: "A brother and sister driving home through isolated countryside for spring break encounter a flesh-eating creature which is in the midst of its ritualistic eating spree.", rating: 6)
    
    static var movieInstance3:Movie = Movie.init(id: 3, title: "Toy Story", director: "John Lasseter", genre: "Animation, Adventure, Comedy", release: "22 november 1995", starActors: ["Tom Hanks", "Time Allen", "Don Rickles"], description: "A cowboy doll is profoundly threatened and jealous when a new spaceman figure supplants him as top toy in a boy's room.", rating: 8)
    
    static var movieInstance4:Movie = Movie.init(id: 4, title: "Titanic", director: "James Cameron", genre: "Drama, Romance", release: "19 December 1997", starActors: ["Leonardo DiCaprio", "Kate Winslet", "Billy Zane"], description: "A seventeen-year-old aristocrat falls in love with a kind but poor artist aboard the luxurious, ill-fated R.M.S. Titanic.", rating: 8)
    
    static var movieInstance5:Movie = Movie.init(id: 5, title: "Black Panther", director: "Ryan Coogler", genre: "Action, Adventure, Sci-Fi", release: "16 February 2018", starActors: ["Chadwick Boseman", "Michael B. Jordan", "Lupita Nyong'o"], description: "T'Challa, the King of Wakanda, rises to the throne in the isolated, technologically advanced African nation, but his claim is challenged by a vengeful outsider who was a childhood victim of T'Challa's father's mistake.", rating: 8)

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

