//
//  MovieController.swift
//  Cinema
//
//  Created by Karl Pfister on 5/8/22.
//

import Foundation
import UIKit.UIImage

// Our Model Controller Class
class MovieController {
    
    // Singleton: To ensure that we are interacting with the *SAME* instance of our *movies* array, we created a singleton and will pass around this specific instance of a *MovieController*
    static let sharedInstance = MovieController()
    
    //MARK: - Source of Truth
    // Source of truth: The collection where we want to store the data we protect. Collected via the array. Protected vie the singleton.
    var movies: [Movie] = []
    
    
    //MARK: - CRUD
    // Creates a Movie object using the values from the user.
    func createMovie(name: String, rating: Double?, synopsis: String, poster: UIImage) {
        // We initialize a movie object via the values passed in parameters.
        let movie = Movie(name: name, rating: rating, synopsis: synopsis, poster: poster)
        // Now the the Movie is initialized we can add it to our SOT.
        movies.append(movie)
    }
    
    
    // What properties
    // What movie
    func update(newName: String, rating: Double?, synopsis: String, poster: UIImage, movieToUpdate: Movie) {
        // The newName is assigned to the name value for the movie we want to update.
        movieToUpdate.name = newName
        movieToUpdate.rating = rating
        movieToUpdate.synopsis = synopsis
        movieToUpdate.moviePoster = poster
     
    }
    
    // What movie
    func delete(movieToDelete: Movie) {
        guard let indexOfMovieToDelete = movies.firstIndex(of: movieToDelete) else {return}
        movies.remove(at: indexOfMovieToDelete)
       
    }
} // End of class
