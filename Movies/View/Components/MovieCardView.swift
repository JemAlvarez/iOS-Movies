//
//  MovieCardView.swift
//  Movies
//
//  Created by Jem Alvarez on 6/20/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI

struct MovieCardView: View {
    let image: String
    let title: String
    let year: String
    let rating: String
    
    private let width = UIScreen.main.bounds.size.width * 0.35
    
    var body: some View {
        NavigationLink(destination: MovieView()) {
            VStack {
                ZStack(alignment: .bottom) {
                    Image(image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(8)
                        .shadow(radius: 7, y: 10)
                    
                    VStack(alignment: .trailing) {
                        Text(rating)
                            .foregroundColor(Color("offwhite"))
                            .font(.system(size: 15))
                            .frame(width: 25, height: 25)
                            .padding(5)
                            .background(LinearGradient(gradient: Gradient(colors: [Color("main_gradient_1"), Color("main_gradient_2")]), startPoint: .topLeading, endPoint: .bottomTrailing))
                            .cornerRadius(99)
                            .padding(10)
                        
                        Spacer()
                        
                        Text(year)
                            .foregroundColor(Color("offwhite"))
                            .font(.footnote)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(10)
                    }
                }
                .frame(height: width * 1.48)
                
                Text(title)
                    .font(.system(size: 18))
                    .fontWeight(.bold)
            }
            .frame(width: width)
        }
        .buttonStyle(PlainButtonStyle())
    }
}

struct MovieCardView_Previews: PreviewProvider {
    static var previews: some View {
        MovieCardView(image: "joker", title: "Joker", year: "2019", rating: "9.6")
    }
}
