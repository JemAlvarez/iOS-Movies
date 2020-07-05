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
        Info(image: "joker", banner: "joker_banner", backdrop: "joker_backdrop", title: "Joker", year: "2019", rating: "1.7", description: "During the 1980s, a failed stand-up comedian is driven insane and turns to a life of crime and chaos in Gotham City while becoming an infamous psychopathic crime figure.", subtitle: "Put on a happy face.", genres: "Crime, Thriller, Drama", length: 140, seasons: nil, cast: [
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
        ]),
        Info(image: "joker", banner: "joker_banner", backdrop: "joker_backdrop", title: "Joker", year: "2019", rating: "1.7", description: "During the 1980s, a failed stand-up comedian is driven insane and turns to a life of crime and chaos in Gotham City while becoming an infamous psychopathic crime figure.", subtitle: "Put on a happy face.", genres: "Crime, Thriller, Drama", length: 140, seasons: nil, cast: [
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
        ]),
        Info(image: "joker", banner: "joker_banner", backdrop: "joker_backdrop", title: "Joker", year: "2019", rating: "1.7", description: "During the 1980s, a failed stand-up comedian is driven insane and turns to a life of crime and chaos in Gotham City while becoming an infamous psychopathic crime figure.", subtitle: "Put on a happy face.", genres: "Crime, Thriller, Drama", length: 140, seasons: nil, cast: [
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
        ]),
        Info(image: "joker", banner: "joker_banner", backdrop: "joker_backdrop", title: "Joker", year: "2019", rating: "1.7", description: "During the 1980s, a failed stand-up comedian is driven insane and turns to a life of crime and chaos in Gotham City while becoming an infamous psychopathic crime figure.", subtitle: "Put on a happy face.", genres: "Crime, Thriller, Drama", length: 140, seasons: nil, cast: [
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
        ]),
        Info(image: "joker", banner: "joker_banner", backdrop: "joker_backdrop", title: "Joker", year: "2019", rating: "1.7", description: "During the 1980s, a failed stand-up comedian is driven insane and turns to a life of crime and chaos in Gotham City while becoming an infamous psychopathic crime figure.", subtitle: "Put on a happy face.", genres: "Crime, Thriller, Drama", length: 140, seasons: nil, cast: [
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
        ]),
        Info(image: "joker", banner: "joker_banner", backdrop: "joker_backdrop", title: "Joker", year: "2019", rating: "1.7", description: "During the 1980s, a failed stand-up comedian is driven insane and turns to a life of crime and chaos in Gotham City while becoming an infamous psychopathic crime figure.", subtitle: "Put on a happy face.", genres: "Crime, Thriller, Drama", length: 140, seasons: nil, cast: [
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
        ]),
        Info(image: "joker", banner: "joker_banner", backdrop: "joker_backdrop", title: "Joker", year: "2019", rating: "1.7", description: "During the 1980s, a failed stand-up comedian is driven insane and turns to a life of crime and chaos in Gotham City while becoming an infamous psychopathic crime figure.", subtitle: "Put on a happy face.", genres: "Crime, Thriller, Drama", length: 140, seasons: nil, cast: [
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
        ]),
        Info(image: "joker", banner: "joker_banner", backdrop: "joker_backdrop", title: "Joker", year: "2019", rating: "1.7", description: "During the 1980s, a failed stand-up comedian is driven insane and turns to a life of crime and chaos in Gotham City while becoming an infamous psychopathic crime figure.", subtitle: "Put on a happy face.", genres: "Crime, Thriller, Drama", length: 140, seasons: nil, cast: [
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
            Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker", image: "joaquin_phoenix"),
        ]),
    ]
    @State var show = false
    @State var blurAmount: CGFloat = 20
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                ScrollView(showsIndicators: false) {
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 15) {
                            HotView(data: movies[0])
                            HotView(data: movies[1])
                            HotView(data: movies[2])
                            HotView(data: movies[3])
                            HotView(data: movies[4])
                            HotView(data: movies[5])
                            HotView(data: movies[6])
                            HotView(data: movies[7])
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
