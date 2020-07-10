//
//  ActorView.swift
//  Movies
//
//  Created by Jem Alvarez on 7/9/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI

struct ActorView: View {
    var body: some View {
        ScrollView(showsIndicators: false ) {
            ZStack(alignment: .top) {
                VStack {
                    Image("joaquin_phoenix")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200)
                        .cornerRadius(20)
                        .shadow(radius: 5, y: 7)
                        .padding(.top, 100)
                    
                    
                }
                BackNavBarView(show: .constant(false))
                    .frame(width: UIScreen.main.bounds.size.width)
                    .padding(.top)
            }
                
                
                
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
        }
    }
}

struct ActorView_Previews: PreviewProvider {
    static var previews: some View {
        ActorView()
    }
}
