//
//  Movies.swift
//  Movies
//
//  Created by student5307 on 02/03/2020.
//  Copyright © 2020 student5310. All rights reserved.
//

import Foundation
class Movie{
    var filmName: String
    var directorName: String
    var posterImage: String?
    
    
    init(filmName: String, directorName: String, posterImage: String? = nil){
        self.filmName = filmName
        self.directorName = directorName
        self.posterImage = posterImage
    }
}
