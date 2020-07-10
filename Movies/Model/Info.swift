//
//  Info.swift
//  Movies
//
//  Created by Jem Alvarez on 6/20/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import Foundation

struct MovieCard: Identifiable {
    let id: Int
    let poster_path: String?
    let release_date: String
    let title: String
    let vote_average: Double
    let overview: String?
    let backdrop_path: String?
}

struct Movie: Identifiable {
    let id: Int
    let backdrop_path: String?
    let genres: [Genre]
    let overview: String?
    let poster_path: String?
    let release_date: String
    let runtime: Int?
    let tagline: String?
    let title: String
    let vote_average: Double
}

struct CastCard: Identifiable {
    let id: Int
    let character: String
    let name: String
    let profile_path: String?
}

struct Genre: Identifiable {
    let id: Int
    let name: String
}
