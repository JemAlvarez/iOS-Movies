//
//  ActorView.swift
//  Movies
//
//  Created by Jem Alvarez on 7/9/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI
import URLImage

struct ActorView: View {
    let personId: Int
    
    @State var person = TempMovies.person
    @State var knownFor = TempMovies.movieCredits
    
    @State var showBio = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ScrollView(showsIndicators: false ) {
                ZStack(alignment: .top) {
                    VStack {
                        if person.profile_path?.count ?? 0 < 15 {
                            Image("placeholder_vertical")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 260)
                            .cornerRadius(20)
                            .shadow(radius: 5, y: 7)
                            .padding(.top, 100)
                        } else {
                            URLImage(URL(string: "\(Api.imageUrl)h632\(person.profile_path ?? "")")!, incremental: true, placeholder: {_ in
                                Image("placeholder_vertical")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 260)
                                    .cornerRadius(20)
                                    .shadow(radius: 5, y: 7)
                                    .padding(.top, 100)
                            })
                            { proxy in
                                proxy.image
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 260)
                                    .cornerRadius(20)
                                    .shadow(radius: 5, y: 7)
                                    .padding(.top, 100)
                            }
                        }
                        
                        Text(person.name)
                            .font(.title)
                            .fontWeight(.semibold)
                            .padding(.top)
                        
                        VStack {
                            Text("Info")
                                .padding(.leading)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.vertical)
                        .background(Color(UIColor.systemGray6))
                        .padding(.top)
                        
                        VStack {
                            Text("Date of birth")
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding([.leading, .top])
                                .font(.system(size: 17, weight: .semibold))
                            
                            Text(person.birthday ?? "_")
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 35)
                                .font(.system(size: 15, weight: .light))
                            
                            Text("Gender")
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding([.leading, .top])
                                .font(.system(size: 17, weight: .semibold))
                            
                            Text(person.gender == 0 ? "Not specified" : (person.gender == 1 ? "Female" : "Male"))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 35)
                                .font(.system(size: 15, weight: .light))
                            
                            Text("Place of birth")
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding([.leading, .top])
                                .font(.system(size: 17, weight: .semibold))
                            
                            Text(person.place_of_birth ?? "_")
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 35)
                                .font(.system(size: 15, weight: .light))
                        }
                        
                        VStack {
                            Text("Biography")
                                .padding(.leading)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.vertical)
                        .background(Color(UIColor.systemGray6))
                        .padding(.top)
                        
                        Text(person.biography)
                            .padding([.horizontal, .top])
                            .lineLimit(10)
                        
                        Button(action: {
                            withAnimation {
                                self.showBio.toggle()
                            }
                        }) {
                            Text("more...")
                            .font(.footnote)
                            .foregroundColor(Color("blue"))
                            .padding(.top)
                        }
                        
                        VStack {
                            Text("Known For")
                                .padding(.leading)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.vertical)
                        .background(Color(UIColor.systemGray6))
                        .padding(.top)
                        
                        ScrollView (.horizontal, showsIndicators: false) {
                            HStack {
                                VStack (spacing: 20) {
                                    HStack {
                                        ForEach(knownFor) { item in
//                                            NavigationLink(destination: item.media_type == "movie" ? MovieView(movieId: item.id) : item.media_type == "tv" ? TvView(tvId: item.id) : MovieView(movieId: item.id)) {
//                                                VStack {
//                                                    Image(item.poster_path ?? "placeholder_vertical")
//                                                        .resizable()
//                                                        .scaledToFit()
//                                                        .frame(height: 120)
//                                                        .cornerRadius(5)
//                                                        .shadow(radius: 4, y: 5)
//                                                    Text(item.title ?? "")
//                                                        .font(.system(size: 12))
//                                                        .fontWeight(.semibold)
//                                                        .lineLimit(1)
//                                                    Text(item.release_date ?? "")
//                                                        .font(.system(size: 10))
//                                                        .fontWeight(.thin)
//                                                }
//                                            }
//                                            .buttonStyle(PlainButtonStyle())
                                            NavigationLink(destination: MovieView(movieId: item.id)) {
                                                VStack {
                                                    Image(item.poster_path ?? "placeholder_vertical")
                                                        .resizable()
                                                        .scaledToFit()
                                                        .frame(height: 120)
                                                        .cornerRadius(5)
                                                        .shadow(radius: 4, y: 5)
                                                    Text(item.title ?? "")
                                                        .font(.system(size: 12))
                                                        .fontWeight(.semibold)
                                                        .lineLimit(1)
                                                    Text(item.release_date ?? "")
                                                        .font(.system(size: 10))
                                                        .fontWeight(.thin)
                                                }
                                            }
                                            .buttonStyle(PlainButtonStyle())
//                                            if item.media_type == "movie" {
//                                                NavigationLink(destination: MovieView(movieId: item.id)) {
//                                                    VStack {
//                                                        Image(item.poster_path ?? "placeholder_vertical")
//                                                            .resizable()
//                                                            .scaledToFit()
//                                                            .frame(height: 120)
//                                                            .cornerRadius(5)
//                                                            .shadow(radius: 4, y: 5)
//                                                        Text(item.title ?? "")
//                                                            .font(.system(size: 12))
//                                                            .fontWeight(.semibold)
//                                                            .lineLimit(1)
//                                                        Text(item.release_date ?? "")
//                                                            .font(.system(size: 10))
//                                                            .fontWeight(.thin)
//                                                    }
//                                                }
//                                                .buttonStyle(PlainButtonStyle())
//                                            } else if item.media_type == "tv" {
//                                                NavigationLink(destination: TvView(tvId: item.id)) {
//                                                    VStack {
//                                                        Image(item.poster_path ?? "placeholder_vertical")
//                                                            .resizable()
//                                                            .scaledToFit()
//                                                            .frame(height: 120)
//                                                            .cornerRadius(5)
//                                                            .shadow(radius: 4, y: 5)
//                                                        Text(item.name ?? "")
//                                                            .font(.system(size: 12))
//                                                            .fontWeight(.semibold)
//                                                            .lineLimit(1)
//                                                        Text(item.first_air_date ?? "")
//                                                            .font(.system(size: 10))
//                                                            .fontWeight(.thin)
//                                                    }
//                                                }
//                                                .buttonStyle(PlainButtonStyle())
//                                            }
                                        }
                                    }
                                }
                            }
                        }
                        .padding([.horizontal, .bottom])
                    }
                    
                    BackNavBarView(show: .constant(false))
                        .frame(width: UIScreen.main.bounds.size.width)
                        .padding(.top)
                }
                .navigationBarBackButtonHidden(true)
                .navigationBarHidden(true)
            }
            
            BottomCard(show: $showBio, text: person.biography, hideOffset: 1200)
        }
        .onAppear{
            Api.getPerson(path: "person/\(self.personId)") { (person) in
                self.person = person
            }
            
            Api.getPersonCredits(path: "person/\(self.personId)/combined_credits") { (credits) in
                self.knownFor = credits
            }
        }
    }
}

struct ActorView_Previews: PreviewProvider {
    static var previews: some View {
        ActorView(personId: 123)
    }
}
