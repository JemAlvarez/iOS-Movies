//
//  Section.swift
//  Movies
//
//  Created by Jem Alvarez on 6/20/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI

struct SectionView: View {
    let title: String
    let type: String
    let data: [Info]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(title)
                .font(.system(size: 19))
                .fontWeight(.bold)
                .padding(.leading)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 15) {
                    if type == "m" {
                        ForEach(data) { item in
                            MovieCardView(movie: item)
                        }
                    }
                    MoreCardView(data: data, title: title)
                }
                .padding(.horizontal)
            }
        }
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(title: "Now", type: "m", data: [
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
)
    }
}
