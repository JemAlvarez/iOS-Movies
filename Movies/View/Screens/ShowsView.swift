//
//  ShowsView.swift
//  Movies
//
//  Created by Jem Alvarez on 7/14/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI

struct ShowsView: View {
    let tvs = TempMovies.tvCards
    
    @State var show = false
    @State var blurAmount: CGFloat = 20
    
    @State var pageNum = 1125
    let totalPages = 2000
    
    var body: some View {
        NavigationView {
            ZStack (alignment: .top) {
                ScrollView(showsIndicators: false) {
                    Text("Latest")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                        .font(.system(size: 19, weight: .bold))
                    
                    ScrollView (.horizontal, showsIndicators: false) {
                        HStack (alignment: .top, spacing: 20) {
                            ForEach(tvs) { tv in
                                TVCardView(type: "s", tv: tv)
                            }

                            MoreTvsCardView(tv: tvs, title: "Latest")
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
                            ForEach (tvs) { tv in
                                TVCardView(type: "l", tv: tv)
                            }
                        }
                    }
                    
                    NavigationLink(destination: TvListView(title: "All", data: tvs, pageNum: $pageNum, totalPages: totalPages)) {
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
