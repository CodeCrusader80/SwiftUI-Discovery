//
//  HstackImage.swift
//  Grece-visite
//
//  Created by Mathieu Moutarde on 19/06/2023.
//

import SwiftUI

let imageNames = ["photo_1", "photo_2", "photo_3", "photo_4", "photo_5"]

struct HstackImage: View {
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(spacing: 10) {
                ForEach(imageNames, id: \.self) { imageName in
                    GeometryReader { geometry in
                        Image(imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: geometry.size.width, height: geometry.size.height)
                            .clipped()
                            .clipShape(RoundedRectangle(cornerRadius: 25))
                    }
                    .frame(width: 150, height: 150) // Taille cible de chaque image
                }
            }
            .padding(10)
        }
    }
}

struct HstackImage_Previews: PreviewProvider {
    static var previews: some View {
        HstackImage()
    }
}
