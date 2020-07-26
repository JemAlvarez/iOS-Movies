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
    
    @Environment(\.presentationMode) var mode
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack{
                HStack {
                    Button (action: {
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
                }
                .foregroundColor(Color("main_gradient_1"))
                .padding([.horizontal, .top])
                
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
        .navigationBarHidden(true)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        MovieListView(title: "Now", data: TempMovies.moviesCards)
    }
}
