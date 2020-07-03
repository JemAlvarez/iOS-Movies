//
//  MovieView.swift
//  Movies
//
//  Created by Jem Alvarez on 7/2/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI

struct MovieView: View {
    @State var show = true
    
    var body: some View {
        ZStack (alignment: .top) {
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading) {
                    
                    // image drag stretchy animation
                    GeometryReader { g in
                        Image("joker_backdrop")
                            .resizable()
                            .scaledToFill()
                            .offset(y: g.frame(in: .global).minY > 0 ? -g.frame(in: .global).minY : 0)
                            // increasing height by drag amount
                            .frame(height: g.frame(in: .global).minY > 0 ? 350 + g.frame(in: .global).minY : 350)
                            .opacity(self.show ? 1 : 0)
                            // blur when pulling down
                            .blur(radius: g.frame(in: .global).minY > 0 ? g.frame(in: .global).minY * 0.1 : 0)
                    }
                        // fixing default frame height
                        .frame(height: 350)
                    
                    VStack {
                        // top part
                        HStack(spacing: 20) {
                            Image("joker")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 140)
                            .cornerRadius(8)
                            .shadow(radius: 7, y: 10)
                            
                            VStack(alignment: .leading) {
                                Group {
                                    Text("Joker".uppercased())
                                        .font(.system(size: 26))
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color.white)
                                    +
                                    Text("(2019)")
                                        .foregroundColor(Color.white.opacity(0.8))
                                        .font(.system(size: 20))
                                }
                                .frame(height: 75)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                
                                Text("Put on a happy face.")
                                    .italic()
                                    .padding(.top)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .font(.system(size: 20))
                                    .lineLimit(2)
                                    .opacity(0.8)
                                
                                Text("Crime, Thriller, Drama")
                                    .padding(.top)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .font(.system(size: 20))
                                    .lineLimit(1)
                                                                    
                                    LinearGradient(gradient: Gradient(colors: [Color("main_gradient_1"), Color("main_gradient_2")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                        .mask(
                                            HStack {
                                                Text("9.8")
                                                    .font(.system(size: 24))
                                                    .padding(.trailing)
                                                    .foregroundColor(Color("main_gradient_2"))
                                                
                                                Image(systemName: "star.fill")
                                                Image(systemName: "star.fill")
                                                Image(systemName: "star.fill")
                                                Image(systemName: "star.fill")
                                                Image(systemName: "star.lefthalf.fill")
                                            }
                                    )
                                
                                Spacer()
                            }
                            .frame(maxWidth: .infinity)
                        }
                        
                        // desc
                        Text("During the 1980s, a failed stand-up comedian is driven insane and turns to a life of crime and chaos in Gotham City while becoming an infamous psydchopathic crime figure.")
                            .font(.system(size: 23))
                            .foregroundColor(Color(UIColor.systemGray))
                            .padding(.top)
                            .lineLimit(6)
                    }
                    .offset(y: -85)
                    .padding(.horizontal)
                }
                .offset(y: -45)
            }
                
            MovieNavView(show: $show)
                .frame(width: UIScreen.main.bounds.size.width)
                .padding(.top)
                
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
        }
    }
}

struct MovieNavView: View {
    @Environment(\.presentationMode) var mode
    
    @Binding var show: Bool
    
    var body: some View {
        HStack {
            Button (action: {
                self.show = false
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
            
            Button (action: {
                
            }) {
                Image(systemName: "square.and.arrow.up")
                    .font(.system(size: 22))
            }
        }
        .foregroundColor(Color("main_gradient_1"))
        .padding(.horizontal)
    }
}

extension UINavigationController: UIGestureRecognizerDelegate {
    override open func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = self
    }
    
    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return viewControllers.count > 1
    }
}

struct MovieView_Previews: PreviewProvider {
    static var previews: some View {
        MovieView()
    }
}
