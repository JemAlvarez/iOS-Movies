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
                        ForEach(movies) { item in
                            MovieCardView(movie: item)
                        }
                    }
                    MoreCardView(movies: movies, title: title)
                }
                .padding(.horizontal)
            }
        }
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(title: "Now", type: "m", movies: TempMovies.moviesCards)
    }
}
