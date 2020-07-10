//
//  TempMovies.swift
//  Movies
//
//  Created by Jem Alvarez on 7/9/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import Foundation

struct TempMovies {
    static let moviesCards = [
        MovieCard(id: 123, poster_path: "joker", release_date: "2019", title: "Joker", vote_average: 8.2, overview: "During the 1980s, a failed stand-up comedian is driven insane and turns to a life of crime and chaos in Gotham City while becoming an infamous psychopathic crime figure.", backdrop_path: "joker_backdrop"),
        MovieCard(id: 456, poster_path: "joker", release_date: "2019", title: "Joker", vote_average: 8.2, overview: "During the 1980s, a failed stand-up comedian is driven insane and turns to a life of crime and chaos in Gotham City while becoming an infamous psychopathic crime figure.", backdrop_path: "joker_backdrop"),
        MovieCard(id: 789, poster_path: "joker", release_date: "2019", title: "Joker", vote_average: 8.2, overview: "During the 1980s, a failed stand-up comedian is driven insane and turns to a life of crime and chaos in Gotham City while becoming an infamous psychopathic crime figure.", backdrop_path: "joker_backdrop"),
        MovieCard(id: 024, poster_path: "joker", release_date: "2019", title: "Joker", vote_average: 8.2, overview: "During the 1980s, a failed stand-up comedian is driven insane and turns to a life of crime and chaos in Gotham City while becoming an infamous psychopathic crime figure.", backdrop_path: "joker_backdrop"),
        MovieCard(id: 680, poster_path: "joker", release_date: "2019", title: "Joker", vote_average: 8.2, overview: "During the 1980s, a failed stand-up comedian is driven insane and turns to a life of crime and chaos in Gotham City while becoming an infamous psychopathic crime figure.", backdrop_path: "joker_backdrop"),
        MovieCard(id: 135, poster_path: "joker", release_date: "2019", title: "Joker", vote_average: 8.2, overview: "During the 1980s, a failed stand-up comedian is driven insane and turns to a life of crime and chaos in Gotham City while becoming an infamous psychopathic crime figure.", backdrop_path: "joker_backdrop"),
        MovieCard(id: 791, poster_path: "joker", release_date: "2019", title: "Joker", vote_average: 8.2, overview: "During the 1980s, a failed stand-up comedian is driven insane and turns to a life of crime and chaos in Gotham City while becoming an infamous psychopathic crime figure.", backdrop_path: "joker_backdrop"),
        MovieCard(id: 357, poster_path: "joker", release_date: "2019", title: "Joker", vote_average: 8.2, overview: "During the 1980s, a failed stand-up comedian is driven insane and turns to a life of crime and chaos in Gotham City while becoming an infamous psychopathic crime figure.", backdrop_path: "joker_backdrop")
    ]
    
    static let movie =
        Movie(id: 258, backdrop_path: "joker_backdrop", genres: [Genre(id: 111, name: "Crime"), Genre(id: 222, name: "Thriller"), Genre(id: 333, name: "Drama")], overview: "During the 1980s, a failed stand-up comedian is driven insane and turns to a life of crime and chaos in Gotham City while becoming an infamous psychopathic crime figure.", poster_path: "joker", release_date: "2019", runtime: 122, tagline: "Put on a happy face.", title: "Joker", vote_average: 8.2)
    
    static let cast = [
        CastCard(id: 073, character: "Arthur Fleck / Joker", name: "Joaquin Phoenix", profile_path: "joaquin_phoenix"),
        CastCard(id: 073, character: "Arthur Fleck / Joker", name: "Joaquin Phoenix", profile_path: "joaquin_phoenix"),
        CastCard(id: 073, character: "Arthur Fleck / Joker", name: "Joaquin Phoenix", profile_path: "joaquin_phoenix"),
        CastCard(id: 073, character: "Arthur Fleck / Joker", name: "Joaquin Phoenix", profile_path: "joaquin_phoenix"),
        CastCard(id: 073, character: "Arthur Fleck / Joker", name: "Joaquin Phoenix", profile_path: "joaquin_phoenix"),
        CastCard(id: 073, character: "Arthur Fleck / Joker", name: "Joaquin Phoenix", profile_path: "joaquin_phoenix"),
        CastCard(id: 073, character: "Arthur Fleck / Joker", name: "Joaquin Phoenix", profile_path: "joaquin_phoenix"),
        CastCard(id: 073, character: "Arthur Fleck / Joker", name: "Joaquin Phoenix", profile_path: "joaquin_phoenix"),
        CastCard(id: 073, character: "Arthur Fleck / Joker", name: "Joaquin Phoenix", profile_path: "joaquin_phoenix"),
        CastCard(id: 073, character: "Arthur Fleck / Joker", name: "Joaquin Phoenix", profile_path: "joaquin_phoenix")
    ]
}
