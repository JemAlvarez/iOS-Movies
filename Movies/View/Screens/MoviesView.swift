//
//  MoviesView.swift
//  Movies
//
//  Created by Jem Alvarez on 6/19/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI

struct MoviesView: View {
    var body: some View {
        NavigationView {
            VStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 15) {
                        HotView()
                        HotView()
                        HotView()
                        HotView()
                        HotView()
                        HotView()
                    }
                    .padding(.horizontal)
                    .padding(.bottom, 10)
                }
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 15) {
                        HotView()
                        HotView()
                        HotView()
                        HotView()
                        HotView()
                        HotView()
                    }
                    .padding(.horizontal)
                }
                Spacer()
            }
        .navigationBarTitle("Movies")
        .navigationBarItems(trailing:
            Button(action: {
                // search action
            }) {
                Image(systemName: "magnifyingglass")
                    .font(.system(size: 26))
        })
        }
    .accentColor(Color("main_gradient_2"))
    }
}

struct MoviesView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesView()
    }
}
