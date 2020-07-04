//
//  BackNavBarView.swift
//  Movies
//
//  Created by Jem Alvarez on 7/4/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI

struct BackNavBarView: View {
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
                // favorite button
            }) {
                Image(systemName: "star")
                    .font(.system(size: 22))
            }
            .padding(.trailing, 20)
            
            Button (action: {
                // share button
            }) {
                Image(systemName: "square.and.arrow.up")
                    .font(.system(size: 22))
            }
        }
        .foregroundColor(Color("main_gradient_1"))
        .padding(.horizontal)
    }
}

struct BackNavBarView_Previews: PreviewProvider {
    static var previews: some View {
        BackNavBarView(show: .constant(false))
    }
}
