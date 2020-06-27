//
//  Section.swift
//  Movies
//
//  Created by Jem Alvarez on 6/20/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI

struct SectionLargeView: View {
    let title: String
    let type: String
    let data: [Info]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(title)
                .font(.system(size: 19))
                .fontWeight(.bold)
                .padding(.leading)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 15) {
                    if type == "m" {
                        ForEach(data.prefix(data.count / 2)) { item in
                            MovieCardView(image: item.image, title: item.title, year: item.year, rating: item.rating)
                        }
                    }
                }
                .padding(.horizontal)
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 15) {
                    if type == "m" {
                        ForEach(data.suffix(data.count / 2)) { item in
                            MovieCardView(image: item.image, title: item.title, year: item.year, rating: item.rating)
                        }
                    }
                    MoreCardView(data: data)
                }
                .padding(.horizontal)
            }
        }
    }
}

struct SectionViewLarge_Previews: PreviewProvider {
    static var previews: some View {
        SectionLargeView(title: "Popular", type: "m", data:
            [
                Info(image: "joker", title: "Joker", year: "2019", rating: "1.7"),
                Info(image: "joker", title: "Joker", year: "2019", rating: "2.7"),
                Info(image: "joker", title: "Joker", year: "2019", rating: "3.7"),
                Info(image: "joker", title: "Joker", year: "2019", rating: "4.7"),
                Info(image: "joker", title: "Joker", year: "2019", rating: "5.7"),
                Info(image: "joker", title: "Joker", year: "2019", rating: "6.7"),
                Info(image: "joker", title: "Joker", year: "2019", rating: "7.7"),
                Info(image: "joker", title: "Joker", year: "2019", rating: "8.7")
            ]
        )
    }
}
