//
//  MovieCardView.swift
//  Movies
//
//  Created by Jem Alvarez on 6/20/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI

struct MovieCardView: View {
    let movie: Info
    
    private let width = UIScreen.main.bounds.size.width * 0.35
    
    var body: some View {
        NavigationLink(destination: MovieView(movie: movie)) {
            VStack {
                ZStack(alignment: .bottom) {
                    Image(movie.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(8)
                        .shadow(radius: 7, y: 10)
                    
                    VStack(alignment: .trailing) {
                        Text(movie.rating)
                            .foregroundColor(Color("offwhite"))
                            .font(.system(size: 15))
                            .frame(width: 25, height: 25)
                            .padding(5)
                            .background(LinearGradient(gradient: Gradient(colors: [Color("main_gradient_1"), Color("main_gradient_2")]), startPoint: .topLeading, endPoint: .bottomTrailing))
                            .cornerRadius(99)
                            .padding(10)
                        
                        Spacer()
                        
                        Text(movie.year)
                            .foregroundColor(Color("offwhite"))
                            .font(.footnote)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(10)
                    }
                }
                .frame(height: width * 1.48)
                
                Text(movie.title)
                    .font(.system(size: 18))
                    .fontWeight(.bold)
            }
            .frame(width: width)
        }
        .buttonStyle(PlainButtonStyle())
    }
}

struct MovieCardView_Previews: PreviewProvider {
    static var previews: some View {
        MovieCardView(movie:
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
