//
//  GridListView.swift
//  Movies
//
//  Created by Jem Alvarez on 6/27/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI

struct ListView: View {
    var title: String
    var type: String
    var data: [Info]
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack{
                Text("\(title) list")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.system(size: 20, weight: .bold))
                    .opacity(0.7)
                    .padding()
                    .background(Color("bg"))
                
                if type == "m" {
                    HStack(spacing: 30) {
                        VStack {
                            ForEach(data.prefix(data.count / 2)) { movie in
                                MovieCardView(movie: movie)
                            }
                        }
                        
                        VStack {
                            ForEach(data.suffix(data.count / 2)) { movie in
                                MovieCardView(movie: movie)
                            }
                        }
                    }
                }
            }
            .padding(.horizontal)
            .offset(y: -20)
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(title: "Now", type: "m", data: [
            Info(image: "joker", banner: "joker_banner", backdrop: "joker_backdrop", title: "Joker", year: "2019", rating: "1.7", description: "During the 1980s, a failed stand-up comedian is driven insane and turns to a life of crime and chaos in Gotham City while becoming an infamous psychopathic crime figure.", cast: [
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker")
            ]),
            Info(image: "joker", banner: "joker_banner", backdrop: "joker_backdrop", title: "Joker", year: "2019", rating: "1.7", description: "During the 1980s, a failed stand-up comedian is driven insane and turns to a life of crime and chaos in Gotham City while becoming an infamous psychopathic crime figure.", cast: [
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker")
            ]),
            Info(image: "joker", banner: "joker_banner", backdrop: "joker_backdrop", title: "Joker", year: "2019", rating: "1.7", description: "During the 1980s, a failed stand-up comedian is driven insane and turns to a life of crime and chaos in Gotham City while becoming an infamous psychopathic crime figure.", cast: [
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker")
            ]),
            Info(image: "joker", banner: "joker_banner", backdrop: "joker_backdrop", title: "Joker", year: "2019", rating: "1.7", description: "During the 1980s, a failed stand-up comedian is driven insane and turns to a life of crime and chaos in Gotham City while becoming an infamous psychopathic crime figure.", cast: [
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker")
            ]),
            Info(image: "joker", banner: "joker_banner", backdrop: "joker_backdrop", title: "Joker", year: "2019", rating: "1.7", description: "During the 1980s, a failed stand-up comedian is driven insane and turns to a life of crime and chaos in Gotham City while becoming an infamous psychopathic crime figure.", cast: [
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker")
            ]),
            Info(image: "joker", banner: "joker_banner", backdrop: "joker_backdrop", title: "Joker", year: "2019", rating: "1.7", description: "During the 1980s, a failed stand-up comedian is driven insane and turns to a life of crime and chaos in Gotham City while becoming an infamous psychopathic crime figure.", cast: [
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker")
            ]),
            Info(image: "joker", banner: "joker_banner", backdrop: "joker_backdrop", title: "Joker", year: "2019", rating: "1.7", description: "During the 1980s, a failed stand-up comedian is driven insane and turns to a life of crime and chaos in Gotham City while becoming an infamous psychopathic crime figure.", cast: [
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"),
                Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker")
            ])
        ]
        )
    }
}
