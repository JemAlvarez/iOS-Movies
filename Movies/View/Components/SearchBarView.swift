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
    
    @State var showingSearch = false
    
    var body: some View {
        VStack{
            HStack {
                if show {
                    Image(systemName: "magnifyingglass")
                    TextField("Search", text: $text.animation(), onCommit: {
                        self.showingSearch.toggle()
                    }).sheet(isPresented: $showingSearch, onDismiss: {
                        self.show.toggle()
                    }) {
                        SearchView(text: self.text)
                    }
                    Spacer()
                    if !text.isEmpty {
                        Button(action: {
                            withAnimation {
                                self.text = ""
                            }
                            self.haptic()
                        }) {
                            Image(systemName: "xmark")
                                .resizable()
                                .foregroundColor(Color(UIColor.systemGray6))
                                .frame(width: 8, height: 8)
                                .background(Circle().foregroundColor(Color(UIColor.systemGray2)).frame(width: 16, height: 16))
                                .padding()
                        }
                    }
                }
            }
            .frame(height: show ? 30 : 0)
            .padding(show ? 5 : 0)
            .padding([.leading, .trailing], 6)
            .background(RoundedRectangle(cornerRadius: 30).foregroundColor(Color(UIColor.systemGray6)))
        }
        .frame(maxWidth:.infinity)
    }
    
    func haptic() {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(.warning)
    }
}

struct SearchResultView: View {
    let title: String
    
    var body: some View {
        Text(title)
            .frame(maxWidth: .infinity)
            .padding(.vertical, 10)
            .background(Color(UIColor.systemGray2))
            .cornerRadius(30)
            .padding(.bottom, 5)
    }
}


struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView(text: .constant("a"), show: .constant(true))
    }
}
