//
//  MovieView.swift
//  Movies
//
//  Created by Jem Alvarez on 7/2/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI
import URLImage

struct MovieView: View {
    @State var show = true
    @State var showDescription = false
    
    let movieId: Int
    
    @State var recommendations = TempMovies.moviesCards
    
    @State var movie = TempMovies.movie
    
    @State var cast = TempMovies.movieCast
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ScrollView(showsIndicators: false) {
                ZStack (alignment: .top) {
                    
                    VStack(alignment: .leading) {
                        
                        // image drag stretchy animation
                        GeometryReader { g in
                            if self.movie.backdrop_path?.count ?? 0 < 15 {
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
                                URLImage(URL(string: "\(Api.imageUrl)\(self.movie.backdrop_path ?? "")")!, placeholder: {_ in
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
                                }
                            }
                        }
                            // fixing default frame height
                            .frame(height: 350)
                            .padding(.leading, -100)
                        
                        VStack {
                            //  top part
                            HStack(spacing: 20) {
                                if movie.poster_path?.count ?? 0 < 15 {
                                    Image("placeholder_vertical")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 140)
                                    .cornerRadius(8)
                                    .shadow(radius: 7, y: 10)
                                } else {
                                    URLImage(URL(string: "\(Api.imageUrl)\(movie.poster_path ?? "")")!, incremental: true, placeholder: {_ in
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
                                        Text(movie.title.uppercased())
                                            .font(.system(size: 22))
                                            .fontWeight(.semibold)
                                            .foregroundColor(Color.white)
                                            +
                                            Text("(")
                                            .foregroundColor(Color.white.opacity(0.8))
                                            .font(.system(size: 20))
                                            +
                                            Text(movie.release_date.prefix(4))
                                                .foregroundColor(Color.white.opacity(0.8))
                                                .font(.system(size: 20))
                                            +
                                            Text(")")
                                            .foregroundColor(Color.white.opacity(0.8))
                                            .font(.system(size: 20))
                                    }
                                    .frame(height: 75)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    
                                    Text(movie.tagline ?? "")
                                        .italic()
                                        .padding(.top)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .font(.system(size: 20))
                                        .lineLimit(2)
                                        .opacity(0.8)
                                    
                                    Text("\(movie.runtime ?? 0) minutes")
                                        .padding(.top, 5)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .font(.system(size: 11, weight: .bold))
                                    
                                    HStack {
                                        ForEach(movie.genres.prefix(3)) { genre in
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
                                                Text("\(movie.vote_average, specifier: "%.1f")")
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
                            Text(movie.overview ?? "")
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
                                        HStack(alignment: .top) {
                                            ForEach(cast.prefix(cast.count / 2)) { person in
                                                ActorCardView(person: person, height: 120)
                                            }
                                        }
                                        
                                        HStack(alignment: .top) {
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
                                        HStack (alignment: .top) {
                                            ForEach(recommendations) { movie in
                                                NavigationLink(destination: MovieView(movieId: movie.id)) {
                                                    VStack {
                                                        URLImage(URL(string: "\(Api.imageUrl)\(movie.poster_path ?? "")")!, incremental: true, placeholder: {_ in
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
                                                        Text(movie.title)
                                                            .font(.system(size: 12))
                                                            .fontWeight(.semibold)
                                                            .lineLimit(2)
                                                        Text(movie.release_date.prefix(4))
                                                            .font(.system(size: 10))
                                                            .fontWeight(.thin)
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
                    
                    
                    
                .navigationBarBackButtonHidden(true)
                .navigationBarHidden(true)
            }
            
            BottomCard(show: $showDescription, text: movie.overview, hideOffset: 600)
        }
        .onAppear{
            Api.getMovie(path: "movie/\(self.movieId)") { (movie) in
                self.movie = movie
            }
            Api.getMovieCards(path: "movie/\(self.movieId)/recommendations") { (movies) in
                self.recommendations = movies
            }
            Api.getMovieCast(path: "movie/\(self.movieId)/credits") { cast in
                self.cast = cast
            }
        }
    }
}

struct MovieView_Previews: PreviewProvider {
    static var previews: some View {
        MovieView(movieId: TempMovies.movie.id)
    }
}
