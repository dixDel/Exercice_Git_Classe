//
//  MovieRequest.swift
//  Movies
//
//  Created by student5304 on 02/03/2020.
//  Copyright © 2020 student5310. All rights reserved.
//

import UIKit

protocol MovieRequest {
  func getList (_ title: String, page: Int) -> MoviePage?
  func getImage (_ url: String, size: Int) -> UIImage?
}
