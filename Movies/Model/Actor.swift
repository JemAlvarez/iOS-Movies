//
//  Actor.swift
//  Movies
//
//  Created by Jem Alvarez on 7/4/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import Foundation

struct Actor: Identifiable {
    let id = UUID()
    let name: String
    let character: String?
    let image: String
}
