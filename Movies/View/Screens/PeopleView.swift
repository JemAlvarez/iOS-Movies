//
//  PeopleView.swift
//  Movies
//
//  Created by Jem Alvarez on 7/15/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI

struct PeopleView: View {
    let people = TempMovies.tvCast
    
    @State var show = false
    @State var blurAmount: CGFloat = 20
    
    @State var pageNum = 1125
    let totalPages = 2000
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                ScrollView(showsIndicators: false) {
                    Text("Popular")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.system(size: 20, weight: .bold))
                        .opacity(0.7)
                        .padding()
                        .background(Color("bg"))
                    
                    HStack(spacing: 30) {
                        VStack(spacing: 20) {
                            ForEach(people.prefix(people.count / 2)) { person in
                                ActorCardView(person: person, height: 190)
                            }
                        }
                        
                        VStack(spacing: 20) {
                            ForEach(people.suffix(people.count / 2)) { person in
                                ActorCardView(person: person, height: 190)
                            }
                        }
                    }
                    
                    PaginationView(pageNum: $pageNum, totalPages: totalPages)
                        .padding(.bottom, 90)
                }
                .padding(.bottom)
                .blur(radius: show ? blurAmount : 0)
                .offset(y: 100)
                
                // search blur background with dismiss actions
                if show {
                    Color.gray.opacity(0.01)
                        .onTapGesture {
                            withAnimation {
                                self.show = false
                            }
                    }
                    .gesture(
                        DragGesture()
                            .onEnded{ val in
                                if val.location.y < val.startLocation.y {
                                    withAnimation {
                                        self.show = false
                                    }
                                }
                        }
                    )
                }
                
                NavBarView(title: "PEOPLE", show: $show)
            }
            .navigationBarTitle("PEOPLE")
            .navigationBarHidden(true)
        }
    }
}

struct PeopleView_Previews: PreviewProvider {
    static var previews: some View {
        PeopleView()
    }
}
