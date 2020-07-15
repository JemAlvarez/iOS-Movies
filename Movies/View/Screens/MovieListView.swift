//
//  GridListView.swift
//  Movies
//
//  Created by Jem Alvarez on 6/27/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI

struct MovieListView: View {
    var title: String
    var data: [MovieCard]
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
                            ForEach(data.prefix(data.count / 2)) { movie in
                                MovieCardView(movie: movie)
                            }
                        }
                        
                        VStack {
                            ForEach(data.suffix(data.count / 2)) { movie in
                                MovieCardView(movie: movie)
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

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        MovieListView(title: "Now", data: TempMovies.moviesCards, pageNum: .constant(1), totalPages: 200)
    }
}
