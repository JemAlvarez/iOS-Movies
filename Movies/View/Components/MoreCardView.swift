//
//  MoreCardView.swift
//  Movies
//
//  Created by Jem Alvarez on 6/20/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI

struct MoreCardView: View {
    let data: [Info]
    
    var body: some View {
        NavigationLink(destination: ListView(title: "Now", type: "m", data: data)) {
            Image(systemName: "plus")
                .font(.system(size: 70, weight: .bold))
                .frame(width: 145, height: 214)
                .background(Color(UIColor.systemGray2))
                .foregroundColor(Color("offwhite"))
                .cornerRadius(8)
        }
    }
}

struct MoreCardView_Previews: PreviewProvider {
    static var previews: some View {
        MoreCardView(data: [
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
