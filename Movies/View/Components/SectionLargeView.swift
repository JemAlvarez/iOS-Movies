//
//  Section.swift
//  Movies
//
//  Created by Jem Alvarez on 6/20/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI

struct SectionLargeView: View {
    let title: String
    let type: String
    let movies: [MovieCard]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(title)
                .font(.system(size: 19))
                .fontWeight(.bold)
                .padding(.leading)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 15) {
                    if type == "m" {
                        ForEach(movies.prefix(movies.count / 2)) { item in
                            MovieCardView(movie: item)
                        }
                    }
                }
                .padding(.horizontal)
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 15) {
                    if type == "m" {
                        ForEach(movies.suffix(movies.count / 2)) { item in
                            MovieCardView(movie: item)
                        }
                    }
                    MoreMoviesCardView(movies: movies, title: title)
                }
                .padding(.horizontal)
            }
        }
    }
}

struct SectionViewLarge_Previews: PreviewProvider {
    static var previews: some View {
        SectionLargeView(title: "Popular", type: "m", movies: TempMovies.moviesCards)
    }
}
