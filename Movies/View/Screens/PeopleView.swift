//
//  PeopleView.swift
//  Movies
//
//  Created by Jem Alvarez on 7/15/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI

struct PeopleView: View {
    @State var people = TempMovies.tvCast
    
    @State var show = false
    @State var blurAmount: CGFloat = 20
    
    @ObservedObject var page = PersonPageObj(data: TempMovies.tvCast)
    
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
                    
                    HStack(alignment: .top, spacing: 30) {
                        VStack(spacing: 20) {
                            ForEach(page.showFromObj ? page.data.prefix(page.data.count / 2) : people.prefix(people.count / 2)) { person in
                                ActorCardView(person: person, height: 180)
                            }
                        }
                        
                        VStack(spacing: 20) {
                            ForEach(page.showFromObj ? page.data.suffix(page.data.count / 2) : people.suffix(people.count / 2)) { person in
                                ActorCardView(person: person, height: 180)
                            }
                        }
                    }
                    
                    PaginationView(pageNum: $page.pageNum, totalPages: page.totalPages)
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
            .onAppear{
                Api.getAllPerson(path: "person/popular", page: 1) { (people) in
                    self.people = people
                }
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
