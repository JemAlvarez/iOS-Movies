//
//  NewsComponent.swift
//  Movies
//
//  Created by Jem Alvarez on 6/19/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI

struct HotView: View {
    let data: Info
    
    private let width = UIScreen.main.bounds.size.width * 0.75
    
    var body: some View {
        NavigationLink(destination: MovieView(movie: data)) {
            ZStack(alignment: .bottom) {
                Image(data.banner)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(8)
                HStack {
                    VStack(alignment: .leading) {
                        Text(data.title)
                            .foregroundColor(.white)
                            .font(.headline)
                        Text(data.description)
                            .foregroundColor(.white)
                            .font(.footnote)
                            .lineLimit(3)
                    }
                    Spacer()
                }
                .padding(10)
            }
            .frame(width: width, height: width * 0.6)
            .shadow(radius: 5 , y: 7)
        }
        .buttonStyle(PlainButtonStyle())
    }
}

struct HotView_Previews: PreviewProvider {
    static var previews: some View {
        HotView(data:
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
            ])
        )
    }
}
