//
//  MoviesView.swift
//  Movies
//
//  Created by Jem Alvarez on 6/19/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI

struct MoviesView: View {
    @State var upcomingMovies = TempMovies.moviesCards
    @State var nowPlayingMovies = TempMovies.moviesCards
    @State var popularMovies = TempMovies.moviesCards
    
    @State var show = false
    @State var blurAmount: CGFloat = 20
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                ScrollView(showsIndicators: false) {
                    Text("In Theaters")
                        .font(.system(size: 19))
                        .fontWeight(.bold)
                        .padding(.leading)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 15) {
                            ForEach(nowPlayingMovies) { movie in
                                HotView(movie: movie)
                            }
                        }
                        .padding(.horizontal)
                        .padding(.bottom, 10)
                    }
                    
                    SectionView(title: "Upcoming", movies: upcomingMovies)
                        .padding(.bottom)
                    
                    SectionLargeView(title: "Popular", type: "m", movies: popularMovies)
                    
                    NavigationLink(destination: MovieListView(title: "All", data: popularMovies)) {
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
            .onAppear {
                Api.getMovieCards(path: "movie/now_playing") { (movies) in
                    self.nowPlayingMovies = movies
                }
                Api.getMovieCards(path: "movie/popular") { (movies) in
                    self.popularMovies = movies
                }
                Api.getMovieCards(path: "movie/upcoming") { (movies) in
                    self.upcomingMovies = movies
                }
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
