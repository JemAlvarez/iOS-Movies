//
//  MovieCardView.swift
//  Movies
//
//  Created by Jem Alvarez on 6/20/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI
import URLImage

struct MovieCardView: View {
    let movie: MovieCard
    
    private let width = UIScreen.main.bounds.size.width * 0.35
    
    var body: some View {
        NavigationLink(destination: MovieView(movieId: movie.id)) {
            VStack {
                ZStack(alignment: .bottom) {
                    URLImage(URL(string: "\(Api.imageUrl)\(movie.poster_path ?? "")")!, placeholder: {_ in
                        Image("placeholder_vertical")
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
                    
                    VStack(alignment: .trailing) {
                        Text("\(movie.vote_average, specifier: "%.1f")")
                            .foregroundColor(Color("offwhite"))
                            .font(.system(size: 15))
                            .frame(width: 25, height: 25)
                            .padding(5)
                            .background(LinearGradient(gradient: Gradient(colors: [Color("main_gradient_1"), Color("main_gradient_2")]), startPoint: .topLeading, endPoint: .bottomTrailing))
                            .cornerRadius(99)
                            .padding(10)
                        
                        Spacer()
                        
                        Text(movie.release_date.prefix(4))
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
                    .lineLimit(1)
            }
            .frame(width: width)
        }
        .buttonStyle(PlainButtonStyle())
    }
}

struct MovieCardView_Previews: PreviewProvider {
    static var previews: some View {
        MovieCardView(movie: TempMovies.moviesCards[0])
    }
}
