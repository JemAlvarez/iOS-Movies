//
//  TvView.swift
//  Movies
//
//  Created by Jem Alvarez on 7/14/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI

struct TvView: View {
    @State var show = true
    @State var showDescription = false
    
    let tvId: Int
    
    let recommendations = TempMovies.tvCards
    
    let tv = TempMovies.tv
    
    let cast = TempMovies.tvCast
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ScrollView(showsIndicators: false) {
                ZStack (alignment: .top) {
                    
                    VStack(alignment: .leading) {
                        
                        // image drag stretchy animation
                        GeometryReader { g in
                            Image(self.tv.backdrop_path ?? "placeholder_horizontal")
                                .resizable()
                                .scaledToFill()
                                .offset(y: g.frame(in: .global).minY > 0 ? -g.frame(in: .global).minY : 0)
                                // increasing height by drag amount
                                .frame(height: g.frame(in: .global).minY > 0 ? 350 + g.frame(in: .global).minY : 350)
                                .opacity(self.show ? 1 : 0)
                                // blur when pulling down
                                .blur(radius: g.frame(in: .global).minY > 0 ? g.frame(in: .global).minY * 0.1 : 0)
                        }
                            // fixing default frame height
                            .frame(height: 350)
                        
                        VStack {
                            //                      top part
                            HStack(spacing: 20) {
                                Image(tv.poster_path ?? "placeholder_vertical")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 140)
                                    .cornerRadius(8)
                                    .shadow(radius: 7, y: 10)
                                
                                VStack(alignment: .leading) {
                                    Group {
                                        Text(tv.name.uppercased())
                                            .font(.system(size: 22))
                                            .fontWeight(.semibold)
                                            .foregroundColor(Color.white)
                                            +
                                            Text("(\(tv.first_air_date))")
                                                .foregroundColor(Color.white.opacity(0.8))
                                                .font(.system(size: 20))
                                    }
                                    .frame(height: 75)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    
                                    Text("\(tv.number_of_seasons) \(tv.number_of_seasons > 1 ? "seasons" : "season")")
                                        .padding(.top, 5)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .font(.system(size: 17, weight: .semibold))
                                        .padding(.top, 5)
                                    
                                    Text("\(tv.episode_run_time.average()) minutes")
                                        .padding(.top, 5)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .font(.system(size: 11, weight: .bold))
                                    
                                    HStack {
                                        ForEach(tv.genres) { genre in
                                            Text(genre.name)
                                                .padding(.top, 5)
                                                .frame(maxWidth: .infinity, alignment: .leading)
                                                .font(.system(size: 20))
                                                .lineLimit(1)
                                        }
                                    }
                                    
                                    LinearGradient(gradient: Gradient(colors: [Color("main_gradient_1"), Color("main_gradient_2")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                        .mask(
                                            HStack {
                                                Text("\(tv.vote_average, specifier: "%.1f")")
                                                    .font(.system(size: 24))
                                                    .padding(.trailing)
                                                    .foregroundColor(Color("main_gradient_2"))
                                                
                                                Image(systemName: "star.fill")
                                                Image(systemName: "star.fill")
                                                Image(systemName: "star.fill")
                                                Image(systemName: "star.fill")
                                                Image(systemName: "star.lefthalf.fill")
                                            }
                                    )
                                    
                                    Spacer()
                                }
                                .frame(maxWidth: .infinity)
                            }
                            
                            // desc
                            Text(tv.overview ?? "")
                                .font(.system(size: 23))
                                .foregroundColor(Color(UIColor.systemGray))
                                .padding(.top)
                                .lineLimit(6)
                            
                            Button(action: {
                                withAnimation {
                                    self.showDescription.toggle()
                                }
                            }) {
                                Text("more...")
                                .font(.footnote)
                                .foregroundColor(Color("blue"))
                                .padding(.top)
                            }
                        }
                        .offset(y: -85)
                        .padding(.horizontal)
                        
                        // cast
                        VStack {
                            VStack {
                                Text("Full Cast")
                                    .padding(.leading)
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.vertical)
                            .background(Color(UIColor.systemGray6))
                            
                            ScrollView (.horizontal, showsIndicators: false) {
                                HStack {
                                    VStack (spacing: 20) {
                                        HStack {
                                            ForEach(cast.prefix(cast.count / 2)) { person in
                                                ActorCardView(person: person, height: 120)
                                            }
                                        }
                                        
                                        HStack {
                                            ForEach(cast.suffix(cast.count / 2)) { person in
                                                ActorCardView(person: person, height: 120)
                                            }
                                        }
                                    }
                                }
                            }
                            .padding(.horizontal)
                        }
                        .offset(y: -65)
                        
                        // cast
                        VStack {
                            VStack {
                                Text("Recommendations")
                                    .padding(.leading)
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.vertical)
                            .background(Color(UIColor.systemGray6))
                            
                            ScrollView (.horizontal, showsIndicators: false) {
                                HStack {
                                    VStack (spacing: 20) {
                                        HStack {
                                            ForEach(recommendations) { tv in
                                                NavigationLink(destination: TvView(tvId: tv.id)) {
                                                    VStack {
                                                        Image(tv.poster_path ?? "placeholder_vertical")
                                                            .resizable()
                                                            .scaledToFit()
                                                            .frame(height: 120)
                                                            .cornerRadius(5)
                                                            .shadow(radius: 4, y: 5)
                                                        Text(tv.name)
                                                            .font(.system(size: 12))
                                                            .fontWeight(.semibold)
                                                            .lineLimit(1)
                                                    }
                                                }
                                                .buttonStyle(PlainButtonStyle())
                                            }
                                        }
                                    }
                                }
                            }
                            .padding(.horizontal)
                        }
                        .offset(y: -55)
                    }
                    .offset(y: -45)
                    .padding(.bottom, -80)
                    
                    BackNavBarView(show: $show)
                        .frame(width: UIScreen.main.bounds.size.width)
                        .padding(.top)
                }
                    
                    
                    
                .navigationBarBackButtonHidden(true)
                .navigationBarHidden(true)
            }
            
            BottomCard(show: $showDescription, text: tv.overview, hideOffset: 600)
        }
    }
}

struct TvView_Previews: PreviewProvider {
    static var previews: some View {
        TvView(tvId: TempMovies.tv.id)
    }
}
