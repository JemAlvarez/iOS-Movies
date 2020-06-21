//
//  NavBarView.swift
//  Movies
//
//  Created by Jem Alvarez on 6/20/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI

struct NavBarView: View {
    let title: String
    // SEARCH BAR
    //
    //
    //
    // SEARCH BAR
    var body: some View {
        HStack {
            Text(title)
                .font(.title)
                .fontWeight(.semibold)
            
            Spacer()
            
            Button(action: {
                print("search button action")
            }) {
                Image(systemName: "magnifyingglass")
                    .font(.system(size: 25, weight: .semibold))
                    .foregroundColor(.primary)
            }
        }
        .padding(.top, 30)
        .padding(.bottom, 10)
        .padding(.horizontal)
        .background(Color("bg"))
    }
}

struct NavBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavBarView(title: "MOVIES")
    }
}
