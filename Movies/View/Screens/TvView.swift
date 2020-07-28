//
//  TvView.swift
//  Movies
//
//  Created by Jem Alvarez on 7/14/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI
import URLImage

struct TvView: View {
    @State var show = true
    @State var showDescription = false
    
    let tvId: Int
    
    @State var recommendations = TempMovies.tvCards
    
    @State var tv = TempMovies.tv
    
    @State var cast = TempMovies.tvCast
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ScrollView(showsIndicators: false) {
                ZStack (alignment: .top) {
                    
                    VStack(alignment: .leading) {
                        
                        // image drag stretchy animation
                        GeometryReader { g in
                            if self.tv.backdrop_path?.count ?? 0 < 15 {
                                Image("placeholder_horizontal")
                                .resizable()
                                .scaledToFill()
                                .offset(y: g.frame(in: .global).minY > 0 ? -g.frame(in: .global).minY : 0)
                                // increasing height by drag amount
                                .frame(height: g.frame(in: .global).minY > 0 ? 350 + g.frame(in: .global).minY : 350)
                                .opacity(self.show ? 1 : 0)
                                // blur when pulling down
                                .blur(radius: g.frame(in: .global).minY > 0 ? g.frame(in: .global).minY * 0.1 : 0)
                            } else {
                                URLImage(URL(string: "\(Api.imageUrl)w1280\(self.tv.backdrop_path ?? "")")!, placeholder: {_ in
                                    Image("placeholder_horizontal")
                                        .resizable()
                                        .scaledToFill()
                                        .offset(y: g.frame(in: .global).minY > 0 ? -g.frame(in: .global).minY : 0)
                                        // increasing height by drag amount
                                        .frame(height: g.frame(in: .global).minY > 0 ? 350 + g.frame(in: .global).minY : 350)
                                        .opacity(self.show ? 1 : 0)
                                        // blur when pulling down
                                        .blur(radius: g.frame(in: .global).minY > 0 ? g.frame(in: .global).minY * 0.1 : 0)
                                })
                                { proxy in
                                    proxy.image
                                        .resizable()
                                        .scaledToFill()
                                        .offset(y: g.frame(in: .global).minY > 0 ? -g.frame(in: .global).minY : 0)
                                        // increasing height by drag amount
                                        .frame(height: g.frame(in: .global).minY > 0 ? 350 + g.frame(in: .global).minY : 350)
                                        .opacity(self.show ? 1 : 0)
                                        // blur when pulling down
                                        .blur(radius: g.frame(in: .global).minY > 0 ? g.frame(in: .global).minY * 0.1 : 0)
                                        .padding(.leading, g.frame(in: .global).minY > 0 ? g.frame(in: .global).minY * -1 : 0)
                                }
                            }
                        }
                            // fixing default frame height
                            .frame(height: 350)
                            .padding(.leading, -100)
                        
                        VStack {
                            //                      top part
                            HStack(spacing: 20) {
                                if tv.poster_path?.count ?? 0 < 15 {
                                    Image("placeholder_vertical")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 140)
                                    .cornerRadius(8)
                                    .shadow(radius: 7, y: 10)
                                } else {
                                    URLImage(URL(string: "\(Api.imageUrl)w500\(tv.poster_path ?? "")")!, incremental: true, placeholder: {_ in
                                        Image("placeholder_vertical")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 140)
                                            .cornerRadius(8)
                                            .shadow(radius: 7, y: 10)
                                    })
                                    { proxy in
                                        proxy.image
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 140)
                                            .cornerRadius(8)
                                            .shadow(radius: 7, y: 10)
                                    }
                                }
                                
                                VStack(alignment: .leading) {
                                    Group {
                                        Text(tv.name.uppercased())
                                        .font(.system(size: 22))
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color.white)
                                        +
                                        Text("(")
                                        .foregroundColor(Color.white.opacity(0.8))
                                        .font(.system(size: 20))
                                        +
                                        Text(tv.first_air_date.prefix(4))
                                            .foregroundColor(Color.white.opacity(0.8))
                                            .font(.system(size: 20))
                                        +
                                        Text(")")
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
                                        ForEach(tv.genres.prefix(3)) { genre in
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
                                                
                                                ForEach(0..<Int(tv.vote_average / 2), id: \.self) {_ in
                                                    Image(systemName: "star.fill")
                                                }
                                                
                                                if tv.vote_average.truncatingRemainder(dividingBy: 1) != 0 {
                                                    Image(systemName: "star.lefthalf.fill")
                                                    ForEach(0..<(4-Int(tv.vote_average / 2)), id: \.self) {_ in
                                                        Image(systemName: "star")
                                                    }
                                                } else {
                                                    ForEach(0..<(5-Int(tv.vote_average / 2)), id: \.self) {_ in
                                                        Image(systemName: "star")
                                                    }
                                                }
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
                                    VStack (alignment: .leading, spacing: 20) {
                                        HStack(alignment: .top) {
                                            ForEach(cast.prefix(cast.count / 2)) { person in
                                                ActorCardView(person: person, height: 120)
                                                    .frame(width: 80)
                                            }
                                        }
                                        
                                        HStack(alignment: .top) {
                                            ForEach(cast.suffix(cast.count / 2)) { person in
                                                ActorCardView(person: person, height: 120)
                                                    .frame(width: 80)
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
                                                        URLImage(URL(string: "\(Api.imageUrl)w185\(tv.poster_path ?? "")")!, incremental: true, placeholder: {_ in
                                                            Image("placeholder_vertical")
                                                                .resizable()
                                                                .scaledToFit()
                                                                .frame(height: 120)
                                                                .cornerRadius(5)
                                                                .shadow(radius: 4, y: 5)
                                                        })
                                                        { proxy in
                                                            proxy.image
                                                                .resizable()
                                                                .scaledToFit()
                                                                .frame(height: 120)
                                                                .cornerRadius(5)
                                                                .shadow(radius: 4, y: 5)
                                                        }
                                                        Text(tv.name)
                                                            .font(.system(size: 12))
                                                            .fontWeight(.semibold)
                                                            .lineLimit(1)
                                                    }
                                                    .frame(width: 80)
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
                .onAppear{
                    Api.getTv(path: "tv/\(self.tvId)") { (tv) in
                        self.tv = tv
                    }
                    Api.getTvCards(path: "tv/\(self.tvId)/recommendations", page: 1) { (tv) in
                        self.recommendations = tv
                    }
                    Api.getMovieCast(path: "tv/\(self.tvId)/credits") { cast in
                        self.cast = cast
                    }
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
