//
//  MovieListTableViewController.swift
//  Cinema
//
//  Created by Karl Pfister on 5/11/22.
//

import UIKit

class MovieListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return MovieController.sharedInstance.movies.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath)

        // Retrieving the movie from the the movies array whose position matches the row of the tableView.
        let movie = MovieController.sharedInstance.movies[indexPath.row]
        cell.textLabel?.text = movie.name

        return cell
    }

    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            // Retrieving the movie from the the movies array whose position matches the row of the tableView.
            let movie = MovieController.sharedInstance.movies[indexPath.row]
            MovieController.sharedInstance.delete(movieToDelete: movie)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }   
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       // Identifier
        if segue.identifier == "toDetailVC" {
            // Index - What cell triggered the segue
            if let index = tableView.indexPathForSelectedRow {
                // Destination - What VC ar eyou navigating to.
                if let destination = segue.destination as? MovieDetailViewController {
                    // Object to send
                    // Retrieving the movie from the the movies array whose position matches the row of the tableView.
                    let objectToSendViaSegue = MovieController.sharedInstance.movies[index.row]
                    // Object to recieve
                    destination.recieverFromSegue = objectToSendViaSegue
                }
            }
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
  

}
