//
//  ProfileView.swift
//  Movies
//
//  Created by Jem Alvarez on 7/15/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
            ScrollView (showsIndicators: false){
                HStack {
                    Text("Profile")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("main_gradient_1"))
                    
                    Spacer()
                    
                    Button(action: {
                        // setting modal view
                    }) {
                        Image(systemName: "gear")
                        .font(.system(size: 22))
                        .foregroundColor(Color("main_gradient_1"))
                    }
                }
                .padding(.horizontal)
                .padding(.top, 50)
                
                Image("steve_carell")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 130)
                    .offset(y: 30)
                    .clipShape(Circle())
                    .shadow(radius: 5, y: 7)
                
                Text("User 123")
                    .font(.system(size: 23))
                    .fontWeight(.semibold)
                    .opacity(0.7)
                
                Group {
                    Text("Favorites: ")
                    +
                    Text("123")
                    .foregroundColor(Color("main_gradient_2"))
                        .font(.system(size: 25))
                }
                .font(.system(size: 20))
                .padding([.top, .leading])
                .frame(maxWidth: .infinity, alignment: .leading)
            }
                
            .navigationBarTitle("Account")
            .navigationBarHidden(true)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
