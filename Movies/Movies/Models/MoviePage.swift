//
//  MoviePage.swift
//  Movies
//
//  Created by student5304 on 02/03/2020.
//  Copyright © 2020 student5310. All rights reserved.
//

import Foundation

struct MoviePage: Codable {
  var page: Int?
  var totalResults: Int?
  var totalPages: Int?
  var results: [Movie]
}
