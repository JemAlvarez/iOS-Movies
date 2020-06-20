//
//  NewsComponent.swift
//  Movies
//
//  Created by Jem Alvarez on 6/19/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI

struct HotView: View {
    private var width = UIScreen.main.bounds.size.width * 0.85
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Image("space_force")
                .resizable()
                .scaledToFit()
                .cornerRadius(8)
            HStack {
                VStack(alignment: .leading) {
                    Text("Space Force")
                        .foregroundColor(.white)
                        .font(.headline)
                    Text("A group of people are tasked with establishing the U.S. Space Force.")
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
        HotView()
    }
}
