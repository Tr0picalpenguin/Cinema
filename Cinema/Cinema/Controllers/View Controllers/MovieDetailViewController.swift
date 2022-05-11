//
//  MovieDetailViewController.swift
//  Cinema
//
//  Created by Karl Pfister on 5/8/22.
//

import UIKit

class MovieDetailViewController: UIViewController {

    //MARK: Outlets
    
    @IBOutlet weak var moviePosterImageView: UIImageView!
    @IBOutlet weak var movieSynopsisTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    func updateViews() {
//        let movie = MovieController.sharedInstance.movies[0]
//        let rating = movie.rating ?? 0
//        moviePosterImageView.image = movie.moviePoster
//        movieNameLabel.text = movie.name
//        movieRatingLabel.text = "\(rating)/10"
//        movieSynopsisTextView.text = movie.synopsis
        
    }
}
