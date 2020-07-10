//
//  MoreCardView.swift
//  Movies
//
//  Created by Jem Alvarez on 6/20/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI

struct MoreCardView: View {
    let movies: [MovieCard]
    let title: String
    
    var body: some View {
        NavigationLink(destination: ListView(title: title, type: "m", data: movies)) {
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
        MoreCardView(movies: TempMovies.moviesCards, title: "Now")
    }
}
