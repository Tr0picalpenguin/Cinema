//
//  MovieController.swift
//  Cinema
//
//  Created by Karl Pfister on 5/8/22.
//

import Foundation
import UIKit.UIImage

class MovieController {
    
    static let sharedInstance = MovieController()
    
    var movies: [Movie] = []
    
    func createMovie(name: String, rating: Double?, synopsis: String, poster: UIImage) {
        let movie = Movie(name: name, rating: rating, synopsis: synopsis, poster: poster)
        movies.append(movie)
    }
}
