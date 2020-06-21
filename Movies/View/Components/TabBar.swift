//
//  TabBar.swift
//  Movies
//
//  Created by Jem Alvarez on 6/19/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI

struct TabBar: View {
    @State private var selection = 0
    
    var body: some View {
        TabView (selection: $selection) {
            MoviesView()
                .tabItem {
                    Image(systemName: selection == 0 ? "film.fill" : "film")
                        .font(.system(size: 28))
                    Text("MOVIES")
                        .font(.system(size: 28))
                }.tag(0)
            Text("Second View")
                .tabItem {
                    Image(systemName: selection == 1 ? "tv.fill" : "tv")
                        .font(.system(size: 28))
                    Text("TV")
                        .font(.system(size: 28))
                }.tag(1)
            Text("Third View")
            .tabItem {
                Image(systemName: selection == 2 ? "person.fill" : "person")
                    .font(.system(size: 28))
                Text("PROFILE")
                    .font(.system(size: 28))
            }.tag(2)
        }
        .accentColor(Color("main_gradient_2"))
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TabBar()
                .environment(\.colorScheme, .light)
            
            TabBar()
                .environment(\.colorScheme, .dark)
        }
    }
}
