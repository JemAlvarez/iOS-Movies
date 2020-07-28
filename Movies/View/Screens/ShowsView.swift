//
//  ShowsView.swift
//  Movies
//
//  Created by Jem Alvarez on 7/14/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI

struct ShowsView: View {
    @State var popularTv = TempMovies.tvCards
    @State var onAirTv = TempMovies.tvCards
    
    @State var show = false
    @State var blurAmount: CGFloat = 20
    
    var body: some View {
        NavigationView {
            ZStack (alignment: .top) {
                ScrollView(showsIndicators: false) {
                    Text("On Air")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                        .font(.system(size: 19, weight: .bold))
                    
                    ScrollView (.horizontal, showsIndicators: false) {
                        HStack (alignment: .top, spacing: 20) {
                            ForEach(onAirTv) { tv in
                                TVCardView(type: "s", tv: tv)
                            }
                        }
                        .padding(.horizontal)
                    }
                    .padding(.bottom)
                    
                    Text("Popular")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                        .font(.system(size: 19, weight: .bold))
                    
                    ScrollView(showsIndicators: false) {
                        VStack {
                            ForEach (popularTv) { tv in
                                TVCardView(type: "l", tv: tv)
                            }
                        }
                    }
                    
                    NavigationLink(destination: TvListView(title: "All", data: popularTv)) {
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
                    .padding(.bottom, 120)
                }
                .padding(.bottom)
                .blur(radius: show ? blurAmount : 0)
                .offset(y: 120)
                
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
                
                NavBarView(title: "TV", show: $show)
            }
            .onAppear {
                Api.getTvCards(path: "tv/on_the_air", page: 1) { (tv) in
                    self.onAirTv = tv
                }
                Api.getTvCards(path: "tv/popular", page: 1) { (tv) in
                    self.popularTv = tv
                }
            }
            .navigationBarTitle("TV")
            .navigationBarHidden(true)
        }
    }
}

struct ShowsView_Previews: PreviewProvider {
    static var previews: some View {
        ShowsView()
    }
}
