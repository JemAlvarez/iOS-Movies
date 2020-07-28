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
    @State var data: [TVCard]
    
    @ObservedObject var page = TvPageObj(data: TempMovies.tvCards)
    
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
                            ForEach(page.showFromObj ? page.data.prefix(page.data.count / 2) : data.prefix(data.count / 2)) { tv in
                                TVCardView(type: "s", tv: tv)
                            }
                        }
                        
                        VStack {
                            ForEach(page.showFromObj ? page.data.suffix(page.data.count / 2) : data.suffix(data.count / 2)) { tv in
                                TVCardView(type: "s", tv: tv)
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

struct TvListView_Previews: PreviewProvider {
    static var previews: some View {
        TvListView(title: "Popular", data: TempMovies.tvCards)
    }
}
