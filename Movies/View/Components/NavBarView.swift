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
                    .foregroundColor(Color("main_gradient_1"))
                
                Spacer()
                
                Button(action: {
                    withAnimation{
                        self.show.toggle()
                        self.search = ""
                    }
                    
                    if self.show {
                        self.openHaptic()
                    } else {
                        self.closeHaptic()
                    }
                    
                }) {
                    Image(systemName: show ? "xmark.circle" : "magnifyingglass")
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundColor(show ? .red : Color("main_gradient_1"))
                }
            }
            
            SearchBarView(text: $search, show: $show)
        }
        .padding(.top, 60)
        .padding(.bottom, 10)
        .padding(.horizontal)
        .background(Color("bg"))
    }
    
    func openHaptic() {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(.success)
    }
    
    func closeHaptic() {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(.warning)
    }
}

struct NavBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavBarView(title: "MOVIES", show: .constant(false))
    }
}
