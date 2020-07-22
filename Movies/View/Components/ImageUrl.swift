//
//  ImageUrl.swift
//  Movies
//
//  Created by Jem Alvarez on 7/22/20.
//  Copyright © 2020 Jem Alvarez. All rights reserved.
//

import SwiftUI

struct ImageUrl: View {
    @ObservedObject var urlImageModel: UrlImageModel
    var orientation: String
    
    var defaultImage = UIImage(named: "placeholder_vertical")
    
    init(urlString: String?, orientation: String) {
        urlImageModel = UrlImageModel(urlString: "\(Api.imageUrl)\(urlString ?? "")")
        self.orientation = orientation
        
        if self.orientation == "h" {
            self.defaultImage = UIImage(named: "placeholder_horizontal")
        }
    }
    
    var body: some View {
        Image(uiImage: urlImageModel.image ?? defaultImage!)
            .resizable()
    }
}

struct ImageUrl_Previews: PreviewProvider {
    static var previews: some View {
        ImageUrl(urlString: nil, orientation: "v")
    }
}
