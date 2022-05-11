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
    @IBOutlet weak var movieNameTextField: UITextField!
    @IBOutlet weak var movieRatingTextField: UITextField!
    
    // This is the receiver
    var recieverFromSegue: Movie?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let name = movieNameTextField.text,
              let poster = moviePosterImageView.image,
              let synopsis = movieSynopsisTextView.text,
              let rating = movieRatingTextField.text else {return}
        // Conditional unwrap
        if let movie = recieverFromSegue {
            MovieController.sharedInstance.update(newName: name, rating: Double(rating) ?? 0.0, synopsis: synopsis, poster: UIImage(imageLiteralResourceName: "theMummy"), movieToUpdate: movie)
            // there is a value - which means the user wants to update.
        } else {
            // There is no value - which means the user wants to create.
            MovieController.sharedInstance.createMovie(name: name, rating: Double(rating) ?? 0.0, synopsis: synopsis, poster: UIImage(imageLiteralResourceName: "theMummy"))
        }
        navigationController?.popViewController(animated: true)
    }
    
    func updateViews() {
        guard let movie = recieverFromSegue else {return}
        let rating = movie.rating ?? 0
        moviePosterImageView.image = movie.moviePoster
        movieNameTextField.text = movie.name
        movieRatingTextField.text = "\(rating)/10"
        movieSynopsisTextView.text = movie.synopsis
        
    }
}
