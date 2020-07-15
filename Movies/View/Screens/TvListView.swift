//
//  TvListView.swift
//  Movies
//
//  Created by Jem Alvarez on 7/14/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI

struct TvListView: View {
    var title: String
    var data: [TVCard]
    @Binding var pageNum: Int
    var totalPages: Int
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack{
                Text("\(title)")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.system(size: 20, weight: .bold))
                    .opacity(0.7)
                    .padding()
                    .background(Color("bg"))
                
                    HStack(spacing: 30) {
                        VStack {
                            ForEach(data.prefix(data.count / 2)) { tv in
                                TVCardView(type: "s", tv: tv)
                            }
                        }
                        
                        VStack {
                            ForEach(data.suffix(data.count / 2)) { tv in
                                TVCardView(type: "s", tv: tv)
                            }
                        }
                    }
                
                if title == "All" {
                    PaginationView(pageNum: $pageNum, totalPages: totalPages)
                }
            }
            .padding(.horizontal)
            .offset(y: -20)
        }
    }
}

struct TvListView_Previews: PreviewProvider {
    static var previews: some View {
        TvListView(title: "Popular", data: TempMovies.tvCards, pageNum: .constant(1), totalPages: 200)
    }
}
