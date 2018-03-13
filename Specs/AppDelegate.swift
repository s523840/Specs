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
    let movieInstance1 = Movie(movieID: 1, movieTitle: "Atomic Blonde", movieDirector: "David Leitch", movieGenre: "Action, Mystery, Thriler", releaseDate: "28 July 2017", starringActors: ["Charlize Theron", "James McAvoy", "John Goodman"], movieDescription: "An undercover MI6 agent is sent to Berlin during the Cold War to investigate the murder of a fellow agent and recover a missing list of double agents.", starRating: 7)
    
    let movieInstance2 = Movie(movieID: 2, movieTitle: "Jeepers Creepers", movieDirector: "Victor Salva", movieGenre: "Horror, Mystery", releaseDate: "31 August 2001", starringActors: ["Gina Philips", "Justin Long", "Jonathan Breck"], movieDescription: "A brother and sister driving home through isolated countryside for spring break encounter a flesh-eating creature which is in the midst of its ritualistic eating spree.", starRating: 6)

    let movieInstance3 = Movie(movieID: 3, movieTitle: "Toy Story", movieDirector: "John Lasseter", movieGenre: "Animation, Adventure, Comedy", releaseDate: "22 November 1995", starringActors: ["Tom Hanks", "Time Allen", "Don Rickles"], movieDescription: "A cowboy doll is profoundly threatened and jealous when a new spaceman figure supplants him as top toy in a boy's room.", starRating: 8)
    
    let movieInstance4 = Movie(movieID: 4, movieTitle: "Titanic", movieDirector: "James Cameron", movieGenre: "Drama, Romance", releaseDate: "19 December 1997", starringActors: ["Leonardo DiCaprio", "Kate Winslet", "Billy Zane"], movieDescription: "A seventeen-year-old aristocrat falls in love with a kind but poor artist aboard the luxurious, ill-fated R.M.S. Titanic.", starRating: 8)
    
    let movieInstance5 = Movie(movieID: 5, movieTitle: "Black Panther", movieDirector: "Ryan Coogler", movieGenre: "Action, Adventure, Sci-Fi", releaseDate: "16 February 2018", starringActors: ["Chadwick Boseman", "Michael B. Jordan", "Lupita Nyong'o"], movieDescription: "T'Challa, the King of Wakanda, rises to the throne in the isolated, technologically advanced African nation, but his claim is challenged by a vengeful outsider who was a childhood victim of T'Challa's father's mistake.", starRating: 8)
    

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

