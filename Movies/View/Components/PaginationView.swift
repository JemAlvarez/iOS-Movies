//
//  PaginationView.swift
//  Movies
//
//  Created by Jem Alvarez on 7/15/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI

struct PaginationView: View {
    @Binding var pageNum: Int
    
    let totalPages: Int
    
    var body: some View {
        HStack (spacing: 10) {
            Button(action: {
                if self.pageNum != 1 {
                    self.pageNum = 1
                }
            }) {
                Image(systemName: "chevron.left.2")
            }
            
            Button(action: {
                if self.pageNum > 1 {
                    self.pageNum -= 1
                }
            }) {
                Image(systemName: "chevron.left")
            }
            
            if pageNum <= 2 {
                ForEach(1...5, id: \.self) { i in
                    Button(action: {
                        self.pageNum = i
                    }) {
                        Text("\(i)")
                    }
                    .foregroundColor(i == self.pageNum ? Color("main_gradient_2") : Color("main_gradient_1"))
                }
            } else if pageNum >= totalPages - 2 {
                ForEach(totalPages - 4...totalPages, id: \.self) { i in
                    Button(action: {
                        self.pageNum = i
                    }) {
                        Text("\(i)")
                    }
                    .foregroundColor(i == self.pageNum ? Color("main_gradient_2") : Color("main_gradient_1"))
                }
            } else {
                ForEach(pageNum - 2...pageNum + 2, id: \.self) { i in
                    Button(action: {
                        self.pageNum = i
                    }) {
                        Text("\(i)")
                    }
                    .foregroundColor(i == self.pageNum ? Color("main_gradient_2") : Color("main_gradient_1"))
                }
            }
            
            Button(action: {
                if self.pageNum < self.totalPages {
                    self.pageNum += 1
                }
            }) {
                Image(systemName: "chevron.right")
            }
            Button(action: {
                if self.pageNum != self.totalPages {
                    self.pageNum = self.totalPages
                }
            }) {
                Image(systemName: "chevron.right.2")
            }
        }
            .padding(.vertical)
    }
}

struct PaginationView_Previews: PreviewProvider {
    static var previews: some View {
        PaginationView(pageNum: .constant(1991), totalPages: 2000)
    }
}
