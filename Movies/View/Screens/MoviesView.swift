//
//  MoviesView.swift
//  Movies
//
//  Created by Jem Alvarez on 6/19/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI

struct MoviesView: View {
    let movies = [
        Info(image: "joker", title: "Joker", year: "2019", rating: "9.7"),
        Info(image: "joker", title: "Joker", year: "2019", rating: "9.7"),
        Info(image: "joker", title: "Joker", year: "2019", rating: "9.7"),
        Info(image: "joker", title: "Joker", year: "2019", rating: "9.7"),
        Info(image: "joker", title: "Joker", year: "2019", rating: "9.7"),
        Info(image: "joker", title: "Joker", year: "2019", rating: "9.7"),
        Info(image: "joker", title: "Joker", year: "2019", rating: "9.7"),
        Info(image: "joker", title: "Joker", year: "2019", rating: "9.7")
    ]
    
    @State var show = false
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                ScrollView(showsIndicators: false) {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 15) {
                            HotView(image: "joker_banner", title: "Joker", description: "Forever alone in a crowd, failed comedian Arthur Fleck seeks connection as he walks the streets of Gotham City")
                            HotView(image: "joker_banner", title: "Joker", description: "Forever alone in a crowd, failed comedian Arthur Fleck seeks connection as he walks the streets of Gotham City")
                            HotView(image: "joker_banner", title: "Joker", description: "Forever alone in a crowd, failed comedian Arthur Fleck seeks connection as he walks the streets of Gotham City")
                            HotView(image: "joker_banner", title: "Joker", description: "Forever alone in a crowd, failed comedian Arthur Fleck seeks connection as he walks the streets of Gotham City")
                            HotView(image: "joker_banner", title: "Joker", description: "Forever alone in a crowd, failed comedian Arthur Fleck seeks connection as he walks the streets of Gotham City")
                            HotView(image: "joker_banner", title: "Joker", description: "Forever alone in a crowd, failed comedian Arthur Fleck seeks connection as he walks the streets of Gotham City")
                        }
                        .padding(.horizontal)
                        .padding(.bottom, 10)
                    }
                    .padding(.top)
                    
                    SectionView(title: "Now", type: "m", data: movies)
                    
                    SectionLargeView(title: "Popular", type: "m", data: movies)
                        .padding(.bottom, 100)
                    
                    Spacer()
                }
                .offset(y: 100)
                
                NavBarView(title: "MOVIES", show: $show)
            }
            .navigationBarTitle("MOVIES")
            .navigationBarHidden(true)
        }
    }
}

struct MoviesView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesView()
    }
}
