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
        Info(image: "joker", title: "Joker", year: "2019", rating: "1.7"),
        Info(image: "joker", title: "Joker", year: "2019", rating: "2.7"),
        Info(image: "joker", title: "Joker", year: "2019", rating: "3.7"),
        Info(image: "joker", title: "Joker", year: "2019", rating: "4.7"),
        Info(image: "joker", title: "Joker", year: "2019", rating: "5.7"),
        Info(image: "joker", title: "Joker", year: "2019", rating: "6.7"),
        Info(image: "joker", title: "Joker", year: "2019", rating: "7.7"),
        Info(image: "joker", title: "Joker", year: "2019", rating: "8.7")
    ]
    
    @State var show = false
    @State var blurAmount: CGFloat = 20
    
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
                .blur(radius: show ? blurAmount : 0)
                .offset(y: 100)
                
                // search blur background with dismiss actions
                if show {
                    Color.gray.opacity(0.01)
                        .onTapGesture {
                            withAnimation {
                                self.show = false
                            }
                    }
                    .gesture(
                        DragGesture()
                            .onEnded{ val in
                                if val.location.y < val.startLocation.y {
                                    withAnimation {
                                        self.show = false
                                    }
                                }
                        }
                    )
                }
                
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
