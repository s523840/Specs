//
//  Model.swift
//  Specs
//
//  Created by Student on 3/3/18.
//  Copyright © 2018 Reuscher,Elicia R. All rights reserved.
//

import Foundation

class Specs{
//declaring our class variables

//array of streaming sites used by the user
var streamingSites: [String] = []
    
//user's current entered mood
var mood:String = ""
    
//array of tv shows watched by the user
var tvShows: [String] = []
    
//array of movies watched by the user
var movies:[String] = []
    
    //function to add a streaming site used by the user
    func addSite(site:String){
        streamingSites+=[site]
    }
    
    //function to add a tv show that the user has watched
    func addTVShow(show:String){
    tvShows+=[show]
    }
    
    //function to add a movie that the user has watched
    func addMovies(movie:String){
        movies+=[movie]
    }
}


