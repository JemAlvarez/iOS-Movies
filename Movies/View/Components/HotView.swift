//
//  NewsComponent.swift
//  Movies
//
//  Created by Jem Alvarez on 6/19/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI

struct HotView: View {
    let image: String
    let title: String
    let description: String
    
    private let width = UIScreen.main.bounds.size.width * 0.75
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Image(image)
                .resizable()
                .scaledToFit()
                .cornerRadius(8)
            HStack {
                VStack(alignment: .leading) {
                    Text(title)
                        .foregroundColor(.white)
                        .font(.headline)
                    Text(description)
                        .foregroundColor(.white)
                        .font(.footnote)
                }
                Spacer()
            }
            .padding(10)
        }
        .frame(width: width, height: width * 0.6)
        .shadow(radius: 5 , y: 7)
    }
}

struct HotView_Previews: PreviewProvider {
    static var previews: some View {
        HotView(image: "space_force_banner", title: "Space Force", description: "A group of people are tasked with establishing the U.S. Space Force.")
    }
}
