//
//  Model.swift
//  Specs
//
//  Created by Student on 3/3/18.
//  Copyright © 2018 Reuscher,Elicia R. All rights reserved.
//

import Foundation

class User {
    private var userID:Int
    private var userName:String
    private var password:String
    private var showFavorites:[TVShow]
    private var movieFavorites:[Movie]
    private var friends:[User]
    
    init(id:Int, userN:String, pass:String) {
        self.userID = id
        self.userName = userN
        self.password = pass
        self.showFavorites = []
        self.movieFavorites = []
        self.friends = []
    }
    
    func getUserID(user:User) -> Int {
        return user.userID
    }
    func setUsdrID(user:User, id:Int) {
        user.userID = id
    }
    
    func getUserName(user:User) -> String {
        return user.userName
    }
    func setUserName(user:User, name:String) {
        user.userName = name
    }
    
    func getUserPassword(user:User) -> String {
        return user.password
    }
    func setUserPassword(user:User, pass:String) {
        user.password = pass
    }
    
    func getFriends(user:User) -> [User] {
        return user.friends
    }
    func setUserFriends(user:User, friends:[User]) {
        user.friends = friends
    }
    func addFriend(friend:User) {
        friends.append(friend)
    }
    
    func removeFriend(friend:User) {
        for n in 0 ... friends.count-1 {
            if(friend.userID == friends[n].userID) {
                friends.remove(at: n)
            }
        }
    }
    
    func getShowFav(user:User) -> [TVShow] {
        return user.showFavorites
    }
    func setShowFav(user:User, shows:[TVShow]) {
        user.showFavorites = shows
    }
    func addShowFav(user:User, show:TVShow) {
        user.showFavorites.append(show)
    }
    func removeShowFav(user:User, show:TVShow) {
        for n in 0 ... user.showFavorites.count-1 {
            if(user.showFavorites[n].showID == show.showID) {
                user.showFavorites.remove(at: n)
            }
        }
    }
    
    func getMovieFav(user:User) -> [Movie] {
        return user.movieFavorites
    }
    func setMovieFav(user:User, movies:[Movie]) {
        user.movieFavorites = movies
    }
    func addMovieFav(user:User, movie:Movie) {
        user.movieFavorites.append(movie)
    }
    func removeMovieFav(user:User, movie:Movie) {
        for n in 0 ... user.movieFavorites.count-1 {
            if(user.movieFavorites[n].movieID == movie.movieID) {
                user.movieFavorites.remove(at: n)
            }
        }
    }
    
}






class Movie {
    var movieID:Int
    var movieTitle:String
    var movieDirector:String
    var movieGenre:String
    var releaseDate:String
    var starringActors:[String]
    var movieDescription:String
    var starRating:Int
    
    init(id:Int, title:String, director:String, genre:String, release:String, starActors:[String], description:String, rating:Int) {
        movieID = id
        movieTitle = title
        movieDirector = director
        movieGenre = genre
        releaseDate = release
        starringActors = starActors
        movieDescription = description
        starRating = rating
    }
    
    func getMovieID(movie:Movie) -> Int {
        return movie.movieID
    }
    func setMovieID(movie:Movie, id:Int) {
        movie.movieID = id
    }
    
    func getMovieTitle(movie:Movie) -> String {
        return movie.movieTitle
    }
    func setMovieTitle(movie:Movie, title:String) {
        movie.movieTitle = title
    }
    
    func getMovieDirector(movie:Movie) -> String {
        return movie.movieDirector
    }
    func setMovieDirector(movie:Movie, director:String) {
        movie.movieDirector = director
    }
    
    func getMovieGenre(movie:Movie) -> String {
        return movie.movieGenre
    }
    func setMovieGenre(movie:Movie, genre:String) {
        movie.movieGenre = genre
    }
    
    func getReleaseDate(movie:Movie) -> String {
        return movie.releaseDate
    }
    func setReleaseDate(movie:Movie, date:String) {
        movie.releaseDate = date
    }
    
    func getStarringActors(movie:Movie) -> [String] {
        return movie.starringActors
    }
    func setStarringActors(movie:Movie, actors:[String]) {
        movie.starringActors = actors
    }
    func addStarringActor(movie:Movie, actor:String) {
        movie.starringActors.append(actor)
    }
    func removeStarringActor(Movie:Movie, actor:String) {
        for n in 0 ... starringActors.count-1 {
            if(starringActors[n] == actor) {
                starringActors.remove(at: n)
            }
        }
    }
    
    func getMovieDescription(movie:Movie) -> String {
        return movie.movieDescription
    }
    func setMovieDescription(movie:Movie, description:String) {
        movie.movieDescription = description
    }
    
    func getMovieRating(movie:Movie) -> Int {
        return movie.starRating
    }
    func setMovieRating(movie:Movie, stars:Int) {
        movie.starRating = stars
    }
    
}






class TVShow {
    var showID:Int
    var showTitle:String
    var showDirector:String
    
    var showGenre:String
    //Not sure how to make this work quite yet, but enums is the goal for genre and rating
    /*enum showGenre:String {
     case Action = "Action"
     case Adventure = "Adventure"
     case Drama = "Drama"
     case Ramance = "Romance"
     case Comedy = "Comedy"
     case Documentary = "Documentary"
     case Reality = "Reality"
     case Animated = "Animated"
     case Childrens = "Childrens"
     case Thriller = "Thriller"
     }*/
    
    var releaseDate:String
    var starringActors:[String]
    var showDescription:String
    
    var starRating:Int
    /*enum starRating:Int {
     case one = 1
     case two
     case three
     case four
     case five
     }*/
    
    init(id: Int, title:String, director:String, genre:String, released:String, starActors:[String], description:String, rating:Int) {
        self.showID = id
        self.showTitle = title
        self.showDirector = director
        self.showGenre = genre
        self.releaseDate = released
        self.starringActors = starActors
        self.showDescription = description
        self.starRating = rating
    }
    
    func getShowID(show:TVShow) -> Int {
        return show.showID
    }
    func setShowID(show:TVShow, id:Int) {
        show.showID = id
    }
    
    func getTitle(show:TVShow) -> String {
        return show.showTitle
    }
    func setTitle(show:TVShow, title:String) {
        show.showTitle = title
    }
    
    func getDirector(show:TVShow) -> String {
        return showDirector
    }
    func setDirector(show:TVShow, director:String) {
        show.showDirector = director
    }
    
    func getGenre(show:TVShow) -> String {
        return show.showGenre
    }
    func setGenre(show:TVShow, genre:String) {
        show.showGenre = genre
    }
    
    func getReleaseDate(show:TVShow) -> String {
        return show.releaseDate
    }
    func setReleaseDate(show:TVShow, release:String) {
        show.releaseDate = release
    }
    
    func getStarringActors(show:TVShow) -> [String] {
        return show.starringActors
    }
    func setStarringActors(show:TVShow, stars:[String]) {
        show.starringActors = stars
    }
    
    func getDescription(show:TVShow) -> String {
        return show.showDescription
    }
    func setDescription(show:TVShow, description:String) {
        show.showDescription = description
    }
    
    func getRating(show:TVShow) -> Int {
        return show.starRating
    }
    func setRating(show:TVShow, rating:Int) {
        show.starRating = rating
    }
    
}
