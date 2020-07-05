//
//  MovieView.swift
//  Movies
//
//  Created by Jem Alvarez on 7/2/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI

struct MovieView: View {
    @State var show = true
    
    let movie: Info
    
    let recommendations = [
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
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            ZStack (alignment: .top) {
                
                VStack(alignment: .leading) {
                    
                    // image drag stretchy animation
                    GeometryReader { g in
                        Image(self.movie.backdrop)
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
                            Image(movie.image)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 140)
                                .cornerRadius(8)
                                .shadow(radius: 7, y: 10)
                            
                            VStack(alignment: .leading) {
                                Group {
                                    Text(movie.title.uppercased())
                                        .font(.system(size: 26))
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color.white)
                                        +
                                        Text("(\(movie.year))")
                                            .foregroundColor(Color.white.opacity(0.8))
                                            .font(.system(size: 20))
                                }
                                .frame(height: 75)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                
                                Text(movie.subtitle)
                                    .italic()
                                    .padding(.top)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .font(.system(size: 20))
                                    .lineLimit(2)
                                    .opacity(0.8)
                                
                                Text("\(movie.length ?? 0) minutes")
                                    .padding(.top, 5)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .font(.system(size: 11, weight: .bold))
                                
                                Text(movie.genres)
                                    .padding(.top, 5)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .font(.system(size: 20))
                                    .lineLimit(1)
                                
                                LinearGradient(gradient: Gradient(colors: [Color("main_gradient_1"), Color("main_gradient_2")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                    .mask(
                                        HStack {
                                            Text(movie.rating)
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
                        Text(movie.description)
                            .font(.system(size: 23))
                            .foregroundColor(Color(UIColor.systemGray))
                            .padding(.top)
                            .lineLimit(6)
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
                                        ForEach(movie.cast.prefix(movie.cast.count / 2)) { person in
                                            ActorCardView(person: person)
                                        }
                                    }
                                    
                                    HStack {
                                        ForEach(movie.cast.suffix(movie.cast.count / 2)) { person in
                                            ActorCardView(person: person)
                                        }
                                    }
                                }
                            }
                        }
                        .padding(.horizontal)
                    }
                    .offset(y: -55)
                    
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
                                        ForEach(recommendations) { movie in
                                            NavigationLink(destination: MovieView(movie: movie)) {
                                                VStack {
                                                    Image(movie.image)
                                                        .resizable()
                                                        .scaledToFit()
                                                        .frame(height: 120)
                                                        .cornerRadius(5)
                                                        .shadow(radius: 4, y: 5)
                                                    Text(movie.title)
                                                        .font(.system(size: 12))
                                                        .fontWeight(.semibold)
                                                        .lineLimit(1)
                                                    Text(movie.year)
                                                        .font(.system(size: 10))
                                                        .fontWeight(.thin)
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
    }
}

extension UINavigationController: UIGestureRecognizerDelegate {
    override open func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = self
    }
    
    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return viewControllers.count > 1
    }
}

struct MovieView_Previews: PreviewProvider {
    static var previews: some View {
        MovieView(movie:
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
            ])
        )
    }
}
