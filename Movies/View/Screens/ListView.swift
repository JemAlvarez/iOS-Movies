//
//  GridListView.swift
//  Movies
//
//  Created by Jem Alvarez on 6/27/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI

struct ListView: View {
    var title: String
    var type: String
    var data: [Info]
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack{
                Text("\(title) list")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.system(size: 20, weight: .bold))
                    .opacity(0.7)
                    .padding()
                    .background(Color("bg"))
                
                if type == "m" {
                    HStack(spacing: 30) {
                        VStack {
                            ForEach(data.prefix(data.count / 2)) { movie in
                                MovieCardView(image: movie.image, title: movie.title, year: movie.year, rating: movie.rating)
                            }
                        }
                        
                        VStack {
                            ForEach(data.suffix(data.count / 2)) { movie in
                                MovieCardView(image: movie.image, title: movie.title, year: movie.year, rating: movie.rating)
                            }
                        }
                    }
                }
            }
            .padding(.horizontal)
            .offset(y: -20)
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(title: "Now", type: "m", data: [
            Info(image: "joker", title: "Joker", year: "2019", rating: "1.7"),
            Info(image: "joker", title: "Joker", year: "2019", rating: "2.7"),
            Info(image: "joker", title: "Joker", year: "2019", rating: "3.7"),
            Info(image: "joker", title: "Joker", year: "2019", rating: "4.7"),
            Info(image: "joker", title: "Joker", year: "2019", rating: "5.7"),
            Info(image: "joker", title: "Joker", year: "2019", rating: "6.7"),
            Info(image: "joker", title: "Joker", year: "2019", rating: "7.7"),
            Info(image: "joker", title: "Joker", year: "2019", rating: "8.7")
        ])
    }
}
