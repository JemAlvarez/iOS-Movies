//
//  MoreTvsCardView.swift
//  Movies
//
//  Created by Jem Alvarez on 7/14/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI

struct MoreTvsCardView: View {
    let tv: [TVCard]
    let title: String
    
    var body: some View {
        NavigationLink(destination: TvListView(title: title, data: tv)) {
            Image(systemName: "plus")
                .font(.system(size: 70, weight: .bold))
                .frame(width: 145, height: 214)
                .background(Color(UIColor.systemGray2))
                .foregroundColor(Color("offwhite"))
                .cornerRadius(8)
        }
    }
}

struct MoreTvsCardView_Previews: PreviewProvider {
    static var previews: some View {
        MoreTvsCardView(tv: TempMovies.tvCards, title: "Popular")
    }
}
