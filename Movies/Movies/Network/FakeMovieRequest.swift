//
//  FakeMovieRequest.swift
//  Movies
//
//  Created by student5308 on 02/03/2020.
//  Copyright © 2020 student5310. All rights reserved.
//

import Foundation

class FakeMovieRequest: MovieRequest {
    
    func getList (_ title: String, page: Int?, complationHandler: @escaping MovieRequestCallback) -> Void {
        let movies = [Movie]()
        for i in 0...30 {
            var movie = Movie()
            movie.title = "Alien"
            movie.director = "Ridley Scott"
            movie.releaseDate = "13/09/1979"
            movie.overview = "Durant le voyage de retour d'un immense cargo spatial en mission commerciale de routine, ses passagers, cinq hommes et deux femmes plongés en hibernation, sont tirés de leur léthargie dix mois plus tôt que prévu par Mother, l'ordinateur de bord. Ce dernier a en effet capté dans le silence interplanétaire des signaux sonores, et suivant une certaine clause du contrat de navigation, les astronautes sont chargés de prospecter tout indice de vie dans l'espace."
            movie.posterUrl = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8vuWruM-ziEj9MIM30-TUOxfeV15kbKt81OKlC_W1vrOcR8Sa"
            movies.append(movie)
        }
        var moviePage = MoviePage()
        moviePage.page = 1
        moviePage.totalPages = 1
        moviePage.totalResults = movies.count
        moviePage.results = movies
        return complationHandler.(moviePage, nil)
    }
    
    
    func getImage (_ url: String, size: Int, complationHandler: @escaping ImageRequstCallback) -> Void {
        
    }
}
