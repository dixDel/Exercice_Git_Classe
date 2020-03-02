//
//  Movie.swift
//  Movies
//
//  Created by student5304 on 02/03/2020.
//  Copyright © 2020 student5310. All rights reserved.
//

import Foundation

struct Movie: Codable {
  var title: String?
  var releaseDate: String?
  var posterUrl: String?
  var overview: String?
  var director: String?
  
  private enum CodingKeys: String, CodingKey {
    case title = "title"
    case releaseDate = "release_date"
    case posterUrl = "poster_path"
    case overview = "overview"
    case director = "director"
  }
  
  init () {
    title = nil
    releaseDate = nil
    posterUrl = nil
    overview = nil
    director = nil
  }
  
  init (from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
     
    title = (try container.decodeIfPresent(String.self, forKey: .title))
    releaseDate = (try container.decodeIfPresent(String.self, forKey: .releaseDate))
    posterUrl = (try container.decodeIfPresent(String.self, forKey: .posterUrl))
    overview = (try container.decodeIfPresent(String.self, forKey: .overview))
    director = (try container.decodeIfPresent(String.self, forKey: .director))
  }
}
