//
//  BottomCard.swift
//  Movies
//
//  Created by Jem Alvarez on 7/10/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI

struct BottomCard: View {
    @Binding var show: Bool
    var text: String?
    var hideOffset: CGFloat
    
    var body: some View {
        ZStack(alignment: .bottom) {
            if show {
                Color.black.edgesIgnoringSafeArea(.all).opacity(0.3)
                    .onTapGesture {
                        withAnimation {
                            self.show.toggle()
                        }
                }
            }
            
            if text == nil || text!.count < 1000 {
                VStack {
                    Button(action: {
                        withAnimation {
                            self.show.toggle()
                        }
                    }) {
                        Image(systemName: "chevron.down")
                        .padding()
                        .foregroundColor(Color("main_gradient_1"))
                    }
                    
                    Text(text ?? "")
                        .padding(.top, 20)
                }
                .frame(maxWidth: .infinity)
                .padding(.bottom, 100)
                .padding(.horizontal)
                .background(Color("bg"))
                .cornerRadius(20)
                .shadow(radius: 10)
                .offset(y: show ? 40 : hideOffset)
                .gesture(
                    DragGesture()
                        .onEnded { ges in
                            if ges.location.y > ges.startLocation.y {
                                withAnimation {
                                    self.show.toggle()
                                }
                            }
                    }
                )
            } else {
                VStack {
                    Button(action: {
                        withAnimation {
                            self.show.toggle()
                        }
                    }) {
                        Image(systemName: "chevron.down")
                        .padding()
                        .foregroundColor(Color("main_gradient_1"))
                    }
                    
                    ScrollView (showsIndicators: false) {
                        Text(text ?? "")
                            .padding(.top, 20)
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.bottom, 100)
                .padding(.horizontal)
                .background(Color("bg"))
                .cornerRadius(20)
                .shadow(radius: 10)
                .offset(y: show ? 40 : hideOffset)
                .gesture(
                    DragGesture()
                        .onEnded { ges in
                            if ges.location.y > ges.startLocation.y {
                                withAnimation {
                                    self.show.toggle()
                                }
                            }
                    }
                )
            }
        }
    }
}

struct BottomCard_Previews: PreviewProvider {
    static var previews: some View {
        BottomCard(show: .constant(false), text: "a", hideOffset: 600)
    }
}
