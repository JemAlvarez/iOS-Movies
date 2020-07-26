//
//  NewsComponent.swift
//  Movies
//
//  Created by Jem Alvarez on 6/19/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI
import URLImage

struct HotView: View {
    let movie: MovieCard
    
    private let width = UIScreen.main.bounds.size.width * 0.75
    
    var body: some View {
        NavigationLink(destination: MovieView(movieId: movie.id)) {
            ZStack(alignment: .bottom) {
                URLImage(URL(string: "\(Api.imageUrl)w780\(movie.backdrop_path ?? "")")!, placeholder: {_ in
                    Image("placeholder_horizontal")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(8)
                        .shadow(radius: 7, y: 10)
                })
                { proxy in
                    proxy.image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(8)
                        .shadow(radius: 7, y: 10)
                }
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
