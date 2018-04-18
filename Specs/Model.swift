//
//  Model.swift
//  Specs
//
//  Created by Student on 3/3/18.
//  Copyright © 2018 Reuscher,Elicia R. All rights reserved.
//

import Foundation

class Specs{

var streamingSites: [String] = []
var mood:String = ""
    var tvShows: [String] = []
    func addSite(site:String){
        streamingSites+=[site]
    }
    
    func addTVShow(show:String){
    tvShows+=[show]
    }
    
}


