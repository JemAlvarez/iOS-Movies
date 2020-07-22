//
//  Info.swift
//  Movies
//
//  Created by Jem Alvarez on 6/20/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import Foundation

struct MovieCard: Codable, Identifiable {
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
    let character: String?
    let name: String
    let profile_path: String?
}

struct Person: Identifiable {
    let id: Int
    let birthday: String?
    let name: String
    let gender: Int
    let biography: String
    let place_of_birth: String?
    let profile_path: String?
}

struct Credit: Identifiable {
    let id: Int
    let name: String
    let release_date: String
    let poster_path: String?
}

struct Genre: Identifiable {
    let id: Int
    let name: String
}

struct TVCard: Identifiable {
    let id: Int
    let name: String
    let poster_path: String?
    let backdrop_path: String?
    let vote_average: Double
}

struct TV: Identifiable {
    let id: Int
    let backdrop_path: String?
    let genres: [Genre]
    let overview: String?
    let poster_path: String?
    let first_air_date: String
    let episode_run_time: [Int]
    let name: String
    let vote_average: Double
    let number_of_seasons: Int
}

struct Page: Codable {
    let page: Int
    let total_pages: Int
}

class MoviePageObj: ObservableObject {
    @Published var pageNum: Int = 1 {
        didSet {
            Api.getAllMovieCards(path: "movie/popular", page: pageNum) { (movies) in
                self.data = movies
            }
            self.showFromObj = true
        }
    }
    var totalPages: Int = 500
    @Published var showFromObj = false
    
    @Published var data: [MovieCard]
    
    init(data: [MovieCard]) {
        self.data = data
    }
}

struct Search: Identifiable {
    let id: Int
    let backdrop_path: String?
    let profile_path: String?
    let vote_average: Double?
    let release_date: String?
    let title: String?
    let name: String?
    let media_type: String
}

// ----------

struct Root: Codable {
    let results: [MovieCard]
}
