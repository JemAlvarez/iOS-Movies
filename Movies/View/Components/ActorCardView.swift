//
//  ActorCardView.swift
//  Movies
//
//  Created by Jem Alvarez on 7/4/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI

struct ActorCardView: View {
    let person: Actor
    
    var body: some View {
        VStack {
            Image("joaquin_phoenix")
                .resizable()
                .scaledToFit()
                .frame(height: 120)
                .cornerRadius(5)
                .shadow(radius: 4, y: 5)
            Text(person.name)
                .font(.system(size: 12))
                .fontWeight(.semibold)
            Text(person.character ?? "")
                .font(.system(size: 10))
                .fontWeight(.thin)
        }
    }
}

struct ActorCardView_Previews: PreviewProvider {
    static var previews: some View {
        ActorCardView(person: Actor(name: "Joaquin Phoenix", character: "Arthur Fleck / Joker"))
    }
}
