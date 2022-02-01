//
//  SuperHeroMovieDetailsViewController.swift
//  Tipster
//
//  Created by Rahmat Herron on 1/30/22.
//

import UIKit
import AlamofireImage

class SuperHeroMovieDetailsViewController: UIViewController {
    
    
    @IBOutlet weak var SHbackdropView: UIImageView!
    @IBOutlet weak var SHposterView: UIImageView!
    @IBOutlet weak var SHtitleLabel: UILabel!
    @IBOutlet weak var SHsynopsisLabel: UILabel!
    
    var movie: [String:Any]!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print(movie["title"])
        
        SHtitleLabel.text = movie["title"] as? String
        SHtitleLabel.sizeToFit()
        
        SHsynopsisLabel.text = movie["overview"] as? String
        SHsynopsisLabel.sizeToFit()
        
        let baseUrl = "https:image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        
        SHposterView.af_setImage(withURL: posterUrl!)
        
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
        
        SHbackdropView.af_setImage(withURL: backdropUrl!)
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
