//
//  InsetGalleryView.swift
//  Africa
//
//  Created by Alessio Toma on 30/10/24.
//

import SwiftUI

struct InsetGalleryView: View {
    let animal : AnimalModel
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(alignment: .center, spacing: 15){
                ForEach(animal.gallery, id: \.self) { photo in
                    Image(photo)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                }
            }
        }
    }
}

private let animals: [AnimalModel] = Bundle.main.decode("animals.json")
#Preview {
    InsetGalleryView(animal: animals[0])
}
