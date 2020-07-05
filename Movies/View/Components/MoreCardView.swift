//
//  MoreCardView.swift
//  Movies
//
//  Created by Jem Alvarez on 6/20/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI

struct MoreCardView: View {
    let data: [Info]
    let title: String
    
    var body: some View {
        NavigationLink(destination: ListView(title: title, type: "m", data: data)) {
            Image(systemName: "plus")
                .font(.system(size: 70, weight: .bold))
                .frame(width: 145, height: 214)
                .background(Color(UIColor.systemGray2))
                .foregroundColor(Color("offwhite"))
                .cornerRadius(8)
        }
    }
}

struct MoreCardView_Previews: PreviewProvider {
    static var previews: some View {
        MoreCardView(data: [
            Info(image: "joker", banner: "joker_banner", backdrop: "joker_backdrop", title: "Joker", year: "2019", rating: "1.7", description: "During the 1980s, a failed stand-up comedian is driven insane and turns to a life of crime and chaos in Gotham City while becoming an infamous psychopathic crime figure.", subtitle: "Put on a happy face.", genres: "Crime, Thriller, Drama", length: 140, seasons: nil, cast: [
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            ]),
            Info(image: "joker", banner: "joker_banner", backdrop: "joker_backdrop", title: "Joker", year: "2019", rating: "1.7", description: "During the 1980s, a failed stand-up comedian is driven insane and turns to a life of crime and chaos in Gotham City while becoming an infamous psychopathic crime figure.", subtitle: "Put on a happy face.", genres: "Crime, Thriller, Drama", length: 140, seasons: nil, cast: [
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            ]),
            Info(image: "joker", banner: "joker_banner", backdrop: "joker_backdrop", title: "Joker", year: "2019", rating: "1.7", description: "During the 1980s, a failed stand-up comedian is driven insane and turns to a life of crime and chaos in Gotham City while becoming an infamous psychopathic crime figure.", subtitle: "Put on a happy face.", genres: "Crime, Thriller, Drama", length: 140, seasons: nil, cast: [
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            ]),
            Info(image: "joker", banner: "joker_banner", backdrop: "joker_backdrop", title: "Joker", year: "2019", rating: "1.7", description: "During the 1980s, a failed stand-up comedian is driven insane and turns to a life of crime and chaos in Gotham City while becoming an infamous psychopathic crime figure.", subtitle: "Put on a happy face.", genres: "Crime, Thriller, Drama", length: 140, seasons: nil, cast: [
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            ]),
            Info(image: "joker", banner: "joker_banner", backdrop: "joker_backdrop", title: "Joker", year: "2019", rating: "1.7", description: "During the 1980s, a failed stand-up comedian is driven insane and turns to a life of crime and chaos in Gotham City while becoming an infamous psychopathic crime figure.", subtitle: "Put on a happy face.", genres: "Crime, Thriller, Drama", length: 140, seasons: nil, cast: [
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            ]),
            Info(image: "joker", banner: "joker_banner", backdrop: "joker_backdrop", title: "Joker", year: "2019", rating: "1.7", description: "During the 1980s, a failed stand-up comedian is driven insane and turns to a life of crime and chaos in Gotham City while becoming an infamous psychopathic crime figure.", subtitle: "Put on a happy face.", genres: "Crime, Thriller, Drama", length: 140, seasons: nil, cast: [
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            ]),
            Info(image: "joker", banner: "joker_banner", backdrop: "joker_backdrop", title: "Joker", year: "2019", rating: "1.7", description: "During the 1980s, a failed stand-up comedian is driven insane and turns to a life of crime and chaos in Gotham City while becoming an infamous psychopathic crime figure.", subtitle: "Put on a happy face.", genres: "Crime, Thriller, Drama", length: 140, seasons: nil, cast: [
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            ]),
            Info(image: "joker", banner: "joker_banner", backdrop: "joker_backdrop", title: "Joker", year: "2019", rating: "1.7", description: "During the 1980s, a failed stand-up comedian is driven insane and turns to a life of crime and chaos in Gotham City while becoming an infamous psychopathic crime figure.", subtitle: "Put on a happy face.", genres: "Crime, Thriller, Drama", length: 140, seasons: nil, cast: [
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            ]),
        ]
, title: "Now")
    }
}
