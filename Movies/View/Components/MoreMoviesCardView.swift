//
//  MoreCardView.swift
//  Movies
//
//  Created by Jem Alvarez on 6/20/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI

struct MoreMoviesCardView: View {
    let movies: [MovieCard]
    let title: String
    
    var body: some View {
        NavigationLink(destination: MovieListView(title: title, data: movies, pageNum: .constant(0), totalPages: 0)) {
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
        MoreMoviesCardView(movies: TempMovies.moviesCards, title: "Now")
    }
}
