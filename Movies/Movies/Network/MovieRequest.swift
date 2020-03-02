//
//  MovieRequest.swift
//  Movies
//
//  Created by student5304 on 02/03/2020.
//  Copyright © 2020 student5310. All rights reserved.
//

import UIKit

typealias MovieRequestCallback = (_ page: MoviePage?, _ error: String?) -> Void
typealias ImageRequstCallback = (_ image: UIImage, _ error: String?) -> Void

protocol MovieRequest {
  func getList (_ title: String, page: Int?, complationHandler: @escaping MovieRequestCallback) -> Void
  func getImage (_ url: String, size: Int, complationHandler: @escaping ImageRequstCallback) -> Void
}
