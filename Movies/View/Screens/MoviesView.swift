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
    
    @State var pageNum = 1125
    let totalPages = 2000
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                ScrollView(showsIndicators: false) {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 15) {
                            ForEach(movies) { movie in
                                HotView(movie: movie)
                            }
                        }
                        .padding(.horizontal)
                        .padding(.bottom, 10)
                    }
                    .padding(.top)
                    
                    SectionView(title: "Now", movies: movies)
                        .padding(.bottom)
                    
                    SectionLargeView(title: "Popular", type: "m", movies: movies)
                    
                    NavigationLink(destination: MovieListView(title: "All", data: movies, pageNum: $pageNum, totalPages: totalPages)) {
                        HStack {
                            Text("View All")
                                .foregroundColor(Color("main_gradient_1"))
                            Image(systemName: "ellipsis.circle")
                                .padding(.leading)
                                .foregroundColor(Color("main_gradient_1"))
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.vertical)
                        .background(Color(UIColor.systemGray5))
                        .cornerRadius(10)
                        .padding(.horizontal)
                    }
                    .padding(.top, 30)
                    .padding(.bottom, 100)
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
