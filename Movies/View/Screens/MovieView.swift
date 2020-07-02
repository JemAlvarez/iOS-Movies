//
//  MovieView.swift
//  Movies
//
//  Created by Jem Alvarez on 7/2/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI

struct MovieView: View {
    @Environment(\.presentationMode) var mode
    
    var body: some View {
        VStack {
            Button("BACK") {
                self.mode.wrappedValue.dismiss()
            }
            .navigationBarBackButtonHidden(true)
            
            Spacer()
        }
    }
}

struct MovieView_Previews: PreviewProvider {
    static var previews: some View {
        MovieView()
    }
}
