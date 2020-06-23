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
    @State var search = ""
    @Binding var show: Bool
    
    var body: some View {
        VStack() {
            HStack {
                Text(title)
                    .font(.title)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button(action: {
                    withAnimation{
                        self.show.toggle()
                        self.search = ""
                    }
                }) {
                    Image(systemName: show ? "xmark.circle" : "magnifyingglass")
                        .font(.system(size: 25, weight: .semibold))
                        .foregroundColor(show ? .red : .primary)
                }
            }
            
            SearchBarView(text: $search, show: $show)
        }
        .padding(.top, 30)
        .padding(.bottom, 10)
        .padding(.horizontal)
        .background(Color("bg"))
    }
}

struct NavBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavBarView(title: "MOVIES", show: .constant(false))
    }
}
