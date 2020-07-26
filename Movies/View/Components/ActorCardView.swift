//
//  ActorCardView.swift
//  Movies
//
//  Created by Jem Alvarez on 7/4/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI
import URLImage

struct ActorCardView: View {
    let person: CastCard
    let height: CGFloat
    
    var body: some View {
        NavigationLink (destination: ActorView(personId: 123)) {
            VStack {
                URLImage(URL(string: "\(Api.imageUrl)w185\(person.profile_path ?? "")")!, incremental: true, placeholder: {_ in
                    Image("placeholder_vertical")
                        .resizable()
                        .scaledToFit()
                        .frame(height: self.height)
                        .cornerRadius(5)
                        .shadow(radius: 4, y: 5)
                })
                { proxy in
                    proxy.image
                        .resizable()
                        .scaledToFit()
                        .frame(height: self.height)
                        .cornerRadius(5)
                        .shadow(radius: 4, y: 5)
                }
                Text(person.name)
                    .font(.system(size: 12))
                    .fontWeight(.semibold)
                    .lineLimit(2)
                
                if person.character != nil {
                    Text(person.character ?? "")
                    .font(.system(size: 10))
                    .fontWeight(.thin)
                    .lineLimit(1)
                }
            }
            .frame(width: 80)
        }
        .buttonStyle(PlainButtonStyle())
    }
}

struct ActorCardView_Previews: PreviewProvider {
    static var previews: some View {
        ActorCardView(person: TempMovies.movieCast[0], height: 120)
    }
}
