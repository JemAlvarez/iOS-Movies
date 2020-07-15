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
                        .font(.system(size: 20))
                    Text("MOVIES")
                }.tag(0)
            ShowsView()
                .tabItem {
                    Image(systemName: selection == 1 ? "tv.fill" : "tv")
                        .font(.system(size: 20))
                    Text("TV")
                }.tag(1)
            PeopleView()
            .tabItem {
                Image(systemName: selection == 2 ? "person.crop.rectangle.fill" : "person.crop.rectangle")
                    .font(.system(size: 20))
                Text("PEOPLE")
            }.tag(2)
//            ProfileView()
//            .tabItem {
//                Image(systemName: selection == 3 ? "person.fill" : "person")
//                    .font(.system(size: 20))
//                Text("PROFILE")
//            }.tag(3)
        }
        .accentColor(Color("main_gradient_1"))
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
