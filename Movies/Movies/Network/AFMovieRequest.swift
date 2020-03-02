//
//  AFMovieRequest.swift
//  Movies
//
//  Created by student5304 on 02/03/2020.
//  Copyright © 2020 student5310. All rights reserved.
//

import UIKit

class AFMovieRequest: MovieRequest {
  func getList(_ title: String, page: Int?, complationHandler: @escaping MovieRequestCallback) {
    var queryPage = ""
    if let p = page {
      queryPage = "&page=\(p)"
    }
    let t = title.trimmingCharacters(in: .whitespaces)
    if t.isEmpty {
      complationHandler(nil, "Search title cannot be empty")
    }
  }
  
  func getImage(_ url: String, size: Int, complationHandler: @escaping ImageRequestCallback) {
    
  }
}
