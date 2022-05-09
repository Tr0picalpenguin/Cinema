//
//  Movie.swift
//  Cinema
//
//  Created by Karl Pfister on 5/8/22.
//

import Foundation
import UIKit

class Movie {
    
    let name: String
    let rating: Double?
    let synopsis: String
    let moviePoster: UIImage
    
    init(name:String, rating:Double?, synopsis: String, poster: UIImage){
        self.name = name
        self.rating = rating
        self.synopsis = synopsis
        self.moviePoster = poster
    }
}
