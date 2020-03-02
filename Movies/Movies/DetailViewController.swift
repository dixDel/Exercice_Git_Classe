//
//  DetailViewController.swift
//  Movies
//
//  Created by student5306 on 02/03/2020.
//  Copyright © 2020 student5310. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelDirector: UILabel!
    @IBOutlet weak var labelDate: UILabel!
    @IBOutlet weak var labelDescription: UILabel!
    @IBOutlet weak var imagePoster: UIImageView!
    
    var model: Movie?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelTitle.text = model?.overview
        labelDirector.text = "Directeur: " + model?.director
        labelDate.text = "Sortie:" + model?.releaseDate
        labelDescription.text = model?.overview
    
        
    
        //magePoster.image
    }
    

}
