//
//  MovieView.swift
//  Movies
//
//  Created by Jem Alvarez on 7/2/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI

struct MovieView: View {
    @State var show = true
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            ZStack (alignment: .top) {
                VStack(alignment: .leading) {
                    Image("joker_backdrop")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 350)
                        .opacity(show ? 1 : 0)
                }
                .offset(y: -45)
                
                MovieNavView(show: $show)
                    .frame(width: UIScreen.main.bounds.size.width)
                    .padding(.top)
            }
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
        }
    }
}

struct MovieNavView: View {
    @Environment(\.presentationMode) var mode
    
    @Binding var show: Bool
    
    var body: some View {
        HStack {
            Button (action: {
                self.show = false
                self.mode.wrappedValue.dismiss()
            }) {
                HStack(spacing: 10) {
                    Image(systemName: "chevron.left")
                        .font(.system(size: 22))
                    Text("Back")
                        .font(.system(size: 22))
                }
            }
            
            Spacer()
            
            Button (action: {
                
            }) {
                Image(systemName: "square.and.arrow.up")
                    .font(.system(size: 22))
            }
        }
        .foregroundColor(Color("main_gradient_1"))
        .padding(.horizontal)
    }
}

struct MovieView_Previews: PreviewProvider {
    static var previews: some View {
        MovieView()
    }
}
