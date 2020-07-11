//
//  NewsComponent.swift
//  Movies
//
//  Created by Jem Alvarez on 6/19/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI

struct HotView: View {
    let movie: MovieCard
    
    private let width = UIScreen.main.bounds.size.width * 0.75
    
    var body: some View {
        NavigationLink(destination: MovieView(movieId: movie.id)) {
            ZStack(alignment: .bottom) {
                Image(movie.backdrop_path ?? "placeholder_horizontal")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(8)
                HStack {
                    VStack(alignment: .leading) {
                        Text(movie.title)
                            .foregroundColor(.white)
                            .font(.headline)
                        Text(movie.overview ?? "")
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
        HotView(movie: TempMovies.moviesCards[0])
    }
}
