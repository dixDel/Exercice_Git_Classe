//
//  MovieCell.swift
//  Movies
//
//  Created by student5307 on 02/03/2020.
//  Copyright © 2020 student5310. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {

    @IBOutlet weak var posterImage: UIImageView!
    @IBOutlet weak var filmName: UILabel!
    @IBOutlet weak var directorName: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        

        // Configure the view for the selected state
    }
    
    
    func setupCell(name: String, director: String, poster: String){
        self.filmName.text = name
        self.directorName.text = director
        self.posterImage.image = UIImage(named: poster)
    }
    
}
