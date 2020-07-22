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
    @State var data: [MovieCard]
    
    @ObservedObject var page = MoviePageObj(data: TempMovies.moviesCards)
    
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
                            ForEach(page.showFromObj ? page.data.prefix(page.data.count / 2) : data.prefix(data.count / 2)) { movie in
                                MovieCardView(movie: movie)
                            }
                        }
                        
                        VStack {
                            ForEach(page.showFromObj ? page.data.suffix(page.data.count / 2) : data.suffix(data.count / 2)) { movie in
                                MovieCardView(movie: movie)
                            }
                        }
                    }
                
                if title == "All" {
                    PaginationView(pageNum: $page.pageNum, totalPages: page.totalPages)
                }
            }
            .padding(.horizontal)
            .offset(y: -20)
        }
        .navigationBarHidden(false)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        MovieListView(title: "Now", data: TempMovies.moviesCards)
    }
}
