//
//  SearchView.swift
//  Movies
//
//  Created by Jem Alvarez on 7/20/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI
import URLImage

struct SearchView: View {
    var text: String
    
    @State var selection = 0
    
    @State var searchMovies = [Search]()
    @State var searchTv = [Search]()
    @State var searchPerson = [Search]()
    
    var body: some View {
        NavigationView {
            VStack {
                ScrollView (showsIndicators: false) {
                    Picker(selection: $selection, label: EmptyView()) {
                        Text("Movies").tag(0)
                        Text("TVs").tag(1)
                        Text("Persons").tag(2)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding([.horizontal, .bottom])
                    
                    VStack {
                        if selection == 0 {
                            ForEach(searchMovies) { item in
                                NavigationLink(destination: MovieView(movieId: item.id)) {
                                    VStack {
                                        ZStack(alignment: .bottom) {
                                            URLImage(URL(string: "\(Api.imageUrl)w780\(item.backdrop_path ?? "")")!, placeholder: {_ in
                                                Image("placeholder_horizontal")
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fit)
                                                    .cornerRadius(8)
                                                    .shadow(radius: 7, y: 10)
                                            })
                                            { proxy in
                                                proxy.image
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fit)
                                                    .cornerRadius(8)
                                                    .shadow(radius: 7, y: 10)
                                            }
                                            
                                            VStack {
                                                Text("\(item.vote_average ?? 0.0, specifier: "%.1f")")
                                                    .foregroundColor(Color("offwhite"))
                                                    .font(.system(size: 15))
                                                    .frame(width: 25, height: 25)
                                                    .padding(5)
                                                    .background(LinearGradient(gradient: Gradient(colors: [Color("main_gradient_1"), Color("main_gradient_2")]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                                    .cornerRadius(99)
                                                    .padding(10)
                                                    .frame(maxWidth: .infinity, alignment: .trailing)
                                                
                                                Spacer()
                                            }
                                        }
                                        .frame(height: (UIScreen.main.bounds.size.width - 40) * 0.56)
                                        
                                        Text(item.title ?? "_")
                                            .font(.system(size: 18))
                                            .fontWeight(.bold)
                                    }
                                    .frame(width: UIScreen.main.bounds.size.width - 40)
                                }.buttonStyle(PlainButtonStyle())
                            }
                        } else if selection == 1 {
                            ForEach(searchTv) { item in
                                TVCardView(type: "l", tv: TVCard(id: item.id, name: item.name ?? "_", poster_path: nil, backdrop_path: item.backdrop_path ?? "_", vote_average: item.vote_average ?? 0.0))
                            }
                        } else if selection == 2 {
                            ForEach(searchPerson) {item in
                                ActorCardView(person: CastCard(id: item.id, character: nil, name: item.name ?? "_", profile_path: item.profile_path ?? "_"), height: 230)
                            }
                        }
                    }
                }
            }
            .onAppear{
                Api.getSearch(searchTerm: self.text) { (search) in
                    search.forEach { (item) in
                        if item.media_type == "movie" {
                            self.searchMovies.append(item)
                        } else if item.media_type == "tv" {
                            self.searchTv.append(item)
                        } else if item.media_type == "person" {
                            self.searchPerson.append(item)
                        }
                    }
                }
            }
            .navigationBarTitle(text)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(text: "A")
    }
}
