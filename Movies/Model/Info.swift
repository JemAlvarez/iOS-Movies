//
//  Info.swift
//  Movies
//
//  Created by Jem Alvarez on 6/20/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import Foundation

struct Info: Identifiable {
    let id = UUID()
    let image: String
    let banner: String
    let backdrop: String
    let title: String
    let year: String
    let rating: String
    let description: String
    let cast: [Actor]
}
