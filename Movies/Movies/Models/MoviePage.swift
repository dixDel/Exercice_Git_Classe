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
  
  private enum CodingKeys: String, CodingKey {
    case page = "page"
    case totalResults = "total_results"
    case totalPages = "total_pages"
    case results = "results"
  }
  
  init (from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
     
    page = (try container.decodeIfPresent(Int.self, forKey: .page))
    totalResults = (try container.decodeIfPresent(Int.self, forKey: .totalResults))
    totalPages = (try container.decodeIfPresent(Int.self, forKey: .totalPages))
    results = (try container.decodeIfPresent([Movie].self, forKey: .results)) ?? Array<Movie>()
  }
}
