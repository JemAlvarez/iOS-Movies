//
//  Api.swift
//  Movies
//
//  Created by Jem Alvarez on 7/22/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import Foundation
import SwiftUI

struct Api {
    static let baseUrl = "https://api.themoviedb.org/3"
    static let imageUrl = "https://image.tmdb.org/t/p/"
    
    static func getMovieCards (path: String, completion: @escaping ([MovieCard]) -> ()) {
        guard let url = URL(string: "\(baseUrl)/\(path)?api_key=\(API_KEY.apiKey)&language=en-US&region=US") else {
            print("Invalid URL")
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, _, err) in
            if let data = data {
                if let movies = try? JSONDecoder().decode(Root.self, from: data) {
                    DispatchQueue.main.async {
                        completion(movies.results)
                    }
                    
                    return
                }
            }
            print("Fetch failed: \(err?.localizedDescription ?? "Unknown Error")")
        }
        .resume()
    }
    
    static func getAllMovieCards (path: String, page: Int, completion: @escaping ([MovieCard]) -> ()) {
        guard let url = URL(string: "\(baseUrl)/\(path)?api_key=\(API_KEY.apiKey)&language=en-US&page=\(page)&region=US") else {
            print("Invalid URL")
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, _, err) in
            if let data = data {
                if let movies = try? JSONDecoder().decode(Root.self, from: data) {
                    DispatchQueue.main.async {
                        completion(movies.results)
                    }
                    
                    return
                }
            }
            print("Fetch failed: \(err?.localizedDescription ?? "Unknown Error")")
        }
        .resume()
    }
    
    static func getMovie (path: String, completion: @escaping (Movie) -> ()) {
        guard let url = URL(string: "\(baseUrl)/\(path)?api_key=\(API_KEY.apiKey)&language=en-US") else {
            print("Invalid URL")
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, _, err) in
            if let data = data {
                if let movie = try? JSONDecoder().decode(Movie.self, from: data) {
                    DispatchQueue.main.async {
                        completion(movie)
                    }
                    
                    return
                }
            }
            print("Fetch failed: \(err?.localizedDescription ?? "Unknown Error")")
        }
        .resume()
    }
    
    static func getMovieCast (path: String, completion: @escaping ([CastCard]) -> ()) {
        guard let url = URL(string: "\(baseUrl)/\(path)?api_key=\(API_KEY.apiKey)") else {
            print("Invalid URL")
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, _, err) in
            if let data = data {
                if let cast = try? JSONDecoder().decode(MovieCredits.self, from: data) {
                    DispatchQueue.main.async {
                        completion(cast.cast)
                    }
                    
                    return
                }
            }
            print("Fetch failed: \(err?.localizedDescription ?? "Unknown Error")")
        }
        .resume()
    }
    
    static func getPage (path: String, completion: @escaping (Page) -> ()) {
        guard let url = URL(string: "\(baseUrl)/\(path)?api_key=\(API_KEY.apiKey)&language=en-US&region=US") else {
            print("Invalid URL")
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, _, err) in
            if let data = data {
                if let page = try? JSONDecoder().decode(Page.self, from: data) {
                    DispatchQueue.main.async {
                        completion(page)
                    }
                    
                    return
                }
            }
            print("Fetch failed: \(err?.localizedDescription ?? "Unknown Error")")
        }
        .resume()
    }
    
    static func getTvCards (path: String, page: Int, completion: @escaping ([TVCard]) -> ()) {
        guard let url = URL(string: "\(baseUrl)/\(path)?api_key=\(API_KEY.apiKey)&language=en-US&page=\(page)") else {
            print("Invalid URL")
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, _, err) in
            if let data = data {
                if let tvs = try? JSONDecoder().decode(Root2.self, from: data) {
                    DispatchQueue.main.async {
                        completion(tvs.results)
                    }
                    
                    return
                }
            }
            print("Fetch failed: \(err?.localizedDescription ?? "Unknown Error")")
        }
        .resume()
    }
    
    static func getTv (path: String, completion: @escaping (TV) -> ()) {
        guard let url = URL(string: "\(baseUrl)/\(path)?api_key=\(API_KEY.apiKey)&language=en-US") else {
            print("Invalid URL")
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, _, err) in
            if let data = data {
                if let tv = try? JSONDecoder().decode(TV.self, from: data) {
                    DispatchQueue.main.async {
                        completion(tv)
                    }
                    
                    return
                }
            }
            print("Fetch failed: \(err?.localizedDescription ?? "Unknown Error")")
        }
        .resume()
    }
    
    static func getPerson (path: String, completion: @escaping (Person) -> ()) {
        guard let url = URL(string: "\(baseUrl)/\(path)?api_key=\(API_KEY.apiKey)&language=en-US") else {
            print("Invalid URL")
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, _, err) in
            if let data = data {
                if let person = try? JSONDecoder().decode(Person.self, from: data) {
                    DispatchQueue.main.async {
                        completion(person)
                    }
                    
                    return
                }
            }
            print("Fetch failed: \(err?.localizedDescription ?? "Unknown Error")")
        }
        .resume()
    }
    
    static func getPersonCredits (path: String, completion: @escaping ([Credit]) -> ()) {
        guard let url = URL(string: "\(baseUrl)/\(path)?api_key=\(API_KEY.apiKey)&language=en-US") else {
            print("Invalid URL")
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, _, err) in
            if let data = data {
                if let person = try? JSONDecoder().decode(PersonCredits.self, from: data) {
                    DispatchQueue.main.async {
                        completion(person.cast)
                    }
                    
                    return
                }
            }
            print("Fetch failed: \(err?.localizedDescription ?? "Unknown Error")")
        }
        .resume()
    }
}

class UrlImageModel: ObservableObject {
    @Published var image: UIImage?
    var urlString: String?
    
    init(urlString: String?) {
        self.urlString = urlString
        loadImage()
    }
    
    func loadImage() {
        loadImageFromUrl()
    }
    
    func loadImageFromUrl() {
        guard let urlString = urlString else {return}
        
        let url = URL(string: urlString)!
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard error == nil else {
                print("Error: \(error!)")
                return
            }
            guard let data = data else {
                print("No data found")
                return
            }
            DispatchQueue.main.async {
                guard let loadedImage = UIImage(data: data) else {
                    return
                }
                
                self.image = loadedImage
            }
        }.resume()
    }
}
