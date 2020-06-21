//
//  Section.swift
//  Movies
//
//  Created by Jem Alvarez on 6/20/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI

struct SectionView: View {
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
                        ForEach(data) { item in
                            MovieCardView(image: item.image, title: item.title, year: item.year, rating: item.rating)
                        }
                    }
                    MoreCardView()
                }
                .padding(.horizontal)
            }
        }
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(title: "Now", type: "m", data: [Info(image: "joker", title: "Joker", year: "2019", rating: "9.7"), Info(image: "joker", title: "Joker", year: "2019", rating: "9.7"), Info(image: "joker", title: "Joker", year: "2019", rating: "9.7"), Info(image: "joker", title: "Joker", year: "2019", rating: "9.7"), Info(image: "joker", title: "Joker", year: "2019", rating: "9.7"), Info(image: "joker", title: "Joker", year: "2019", rating: "9.7"), Info(image: "joker", title: "Joker", year: "2019", rating: "9.7"), Info(image: "joker", title: "Joker", year: "2019", rating: "9.7"),])
    }
}
