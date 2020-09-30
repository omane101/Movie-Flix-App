//
//  MovieDetailsViewController.swift
//  Omane Flix
//
//  Created by Mohamed Omane on 9/29/20.
//

import UIKit
import Alamofire

class MovieDetailsViewController: UIViewController {

    var movie: [String:Any]!
    
    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var synopsisLabel: UILabel!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // text fields
        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
        synopsisLabel.text = movie["overview"] as? String
        synopsisLabel.sizeToFit()
        
        // images
        let baseURL = "https://image.tmdb.org/t/p/"
        
        // image: poster
        let posterSize = "w185"
        let posterPath = movie["poster_path"] as! String
        let posterURL = URL(string: baseURL + posterSize + posterPath)
        
        // image: backdrop
        let backdropSize = "w780"
        let backdropPath = movie["backdrop_path"] as! String
        let backdropURL = URL(string: baseURL + backdropSize + backdropPath)
        
        posterView.af.setImage(withURL: posterURL!)
        backdropView.af.setImage(withURL: backdropURL!)
        
        
        
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
