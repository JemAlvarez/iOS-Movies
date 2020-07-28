//
//  TVCardView.swift
//  Movies
//
//  Created by Jem Alvarez on 7/14/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI
import URLImage

struct TVCardView: View {
    let type: String
    let tv: TVCard
    private let width = UIScreen.main.bounds.size.width
    
    var body: some View {
        NavigationLink(destination: TvView(tvId: tv.id)) {
            if type == "s" {
                VStack {
                    ZStack(alignment: .bottom) {
                        URLImage(URL(string: "\(Api.imageUrl)w300\(tv.poster_path ?? "")")!, placeholder: {_ in
                            Image("placeholder_vertical")
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
                            Text("\(tv.vote_average, specifier: "%.1f")")
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
                    .frame(height: width * 0.35 * 1.48)
                    
                    Text(tv.name)
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                        .lineLimit(1)
                }
                .frame(width: width * 0.35)
            } else if type == "l" {
                VStack {
                    ZStack(alignment: .bottom) {
                        URLImage(URL(string: "\(Api.imageUrl)w780\(tv.backdrop_path ?? "")")!, placeholder: {_ in
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
                            Text("\(tv.vote_average, specifier: "%.1f")")
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
                    .frame(height: (width - 40) * 0.56)
                    
                    Text(tv.name)
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                        .lineLimit(1)
                }
                .frame(width: width - 40)
            }
        }
        .buttonStyle(PlainButtonStyle())
    }
}

struct TVCardView_Previews: PreviewProvider {
    static var previews: some View {
        TVCardView(type: "l", tv: TempMovies.tvCards[0])
    }
}
