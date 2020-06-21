//
//  Section.swift
//  Movies
//
//  Created by Jem Alvarez on 6/20/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI

struct SectionView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                Text("A")
            }
        }
    }
}

struct Section_Previews: PreviewProvider {
    static var previews: some View {
        SectionView()
    }
}
