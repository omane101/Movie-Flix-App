//
//  HerosDetailsViewController.swift
//  Omane Flix
//
//  Created by Mohamed Omane on 9/30/20.
//

import UIKit
import Alamofire

class HerosDetailsViewController: UIViewController {
    
    var movie: [String:Any]!
    // backdropView
    @IBOutlet weak var backdropView: UIImageView!
    
    //posterView
    @IBOutlet weak var posterView: UIImageView!
    
    // synposisLabel
    @IBOutlet weak var synposisLabel: UILabel!
    
    // titleLable
    @IBOutlet weak var titleLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // text fields
        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
        synposisLabel.text = movie["overview"] as? String
        synposisLabel.sizeToFit()
        
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
    



}
