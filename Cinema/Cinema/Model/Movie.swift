//
//  Movie.swift
//  Cinema
//
//  Created by Karl Pfister on 5/8/22.
//

import Foundation
import UIKit

/**
 This is the blueprint for the Movie class. This initializes a Movie object.
 It has properties:
    - name: The *String * identifier for the movie
    - rating: The *Double* used to display the rating of the Movie *Optional*
    - synopsis: The *String* description of the Movie
    - moviePoster: the *UIImage* for the Movies's promotional content
 */
class Movie {
    
    var name: String
    var rating: Double?
    var synopsis: String
    var moviePoster: UIImage
    
    
    /**
        The member-wise initializer Initializes, or creates, a Movie object using the data provided.
     **/
    init(name:String, rating:Double?, synopsis: String, poster: UIImage){
        self.name = name
        self.rating = rating // maybe caus its optional
        self.synopsis = synopsis
        self.moviePoster = poster
    }
}

extension Movie: Equatable {
    static func == (lhs: Movie, rhs: Movie) -> Bool {
        return lhs.name == rhs.name &&
        lhs.synopsis == rhs.synopsis &&
        lhs.rating == rhs.rating &&
        lhs.moviePoster == rhs.moviePoster
    }
}

