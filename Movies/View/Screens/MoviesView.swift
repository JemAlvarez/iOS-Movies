//
//  MoviesView.swift
//  Movies
//
//  Created by Jem Alvarez on 6/19/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI

struct MoviesView: View {
    let movies = TempMovies.moviesCards
    
    @State var show = false
    @State var blurAmount: CGFloat = 20
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                ScrollView(showsIndicators: false) {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 15) {
                            HotView(movie: movies[0])
                            HotView(movie: movies[1])
                            HotView(movie: movies[2])
                            HotView(movie: movies[3])
                            HotView(movie: movies[4])
                            HotView(movie: movies[5])
                            HotView(movie: movies[6])
                            HotView(movie: movies[7])
                        }
                        .padding(.horizontal)
                        .padding(.bottom, 10)
                    }
                    .padding(.top)
                    
                    SectionView(title: "Now", type: "m", movies: movies)
                    
                    SectionLargeView(title: "Popular", type: "m", movies: movies)
                        .padding(.bottom, 100)
                    
                    Spacer()
                }
                .padding(.bottom)
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
