//
//  SearchBarView.swift
//  Movies
//
//  Created by Jem Alvarez on 6/22/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI

struct SearchBarView: View {
    @Binding var text: String
    @Binding var show: Bool
    
    var body: some View {
        VStack{
            HStack {
                if show {
                    Image(systemName: "magnifyingglass")
                    TextField("Search", text: $text.animation())
                    Spacer()
                    if !text.isEmpty {
                        Button(action: {
                            withAnimation {
                                self.text = ""
                            }
                        }) {
                            Image(systemName: "xmark")
                                .resizable()
                                .foregroundColor(Color(UIColor.systemGray6))
                                .frame(width: 8, height: 8)
                                .background(Circle().foregroundColor(Color(UIColor.systemGray2)).frame(width: 16, height: 16))
                        }
                    }
                }
            }
            .frame(height: show ? 30 : 0)
            .padding(show ? 5 : 0)
            .padding([.leading, .trailing], 6)
            .background(RoundedRectangle(cornerRadius: 30).foregroundColor(Color(UIColor.systemGray6)))
            
            VStack (spacing: 0) {
                if show && !text.isEmpty {
                    Text("Joker")
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 10)
                        .background(Color("yellow"))
                        .cornerRadius(30)
                        .padding(.bottom, 5)
                    Text("Joker")
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 10)
                        .background(Color("yellow"))
                        .cornerRadius(30)
                        .padding(.bottom, 5)
                    Text("Joker")
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 10)
                        .background(Color("yellow"))
                        .cornerRadius(30)
                }
            }
        }
        .frame(maxWidth:.infinity)
        .opacity(show ? 1 : 0)
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView(text: .constant("a"), show: .constant(true))
    }
}
