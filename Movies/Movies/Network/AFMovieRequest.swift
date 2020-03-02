//
//  AFMovieRequest.swift
//  Movies
//
//  Created by student5304 on 02/03/2020.
//  Copyright © 2020 student5310. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage

class AFMovieRequest: MovieRequest {
  func getList (_ title: String, page: Int?, complationHandler: @escaping MovieRequestCallback) {
    var queryPage = ""
    if let p = page {
      queryPage = "&page=\(p)"
    }
    let t = title.trimmingCharacters(in: .whitespaces)
    if t.isEmpty {
      complationHandler(nil, "Search title cannot be empty")
      return
    }
    let url = "https://api.themoviedb.org/3/search/movie?api_key=c1ac741d5dd740f9861e794c5363b0c2&query=\(t)\(queryPage)"
    Alamofire.request(url).responseJSON(completionHandler: { (jsonResp) in
      let jsonDecoder = JSONDecoder()
      if let data = jsonResp.data {
        do {
          let receivePage = try jsonDecoder.decode(MoviePage.self, from: data)
          complationHandler(receivePage, nil)
        }
        catch (let error) {
          complationHandler(nil, "\(error)")
        }
      }
      else {
        complationHandler(nil, "Pas de réponse")
      }
    })
  }
  
  func getImage (_ url: String, size: Int, complationHandler: @escaping ImageRequestCallback) {

    Alamofire.request("https://image.tmdb.org/t/p/w\(size)\(url)").responseData { (imgData) in
      if let data = imgData.data {
        if let img = UIImage(data: data) {
          complationHandler(img, nil)
          return
        }
      }
      complationHandler(nil, "Pas de réponse")
    }
  }
  
  func getImage(_ imageView: UIImageView, url: String, size: Int, radius: Float, placeholderImageName: String) {
    let filter = AspectScaledToFillSizeWithRoundedCornersFilter(
        size: imageView.frame.size,
        radius: CGFloat(radius)
    )
    imageView.af_setImage(
      withURL: URL(string: "https://image.tmdb.org/t/p/w\(size)\(url)")!,
      placeholderImage: UIImage(named: placeholderImageName),
      filter: filter)
  }
}
