//
//  AnimalGridItemVIew.swift
//  Africa
//
//  Created by Alessio Toma on 31/10/24.
//

import SwiftUI

struct AnimalGridItemView: View {
    
    let animal: AnimalModel
    
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

private let animals:[AnimalModel] = Bundle.main.decode("animals.json")
#Preview {
    AnimalGridItemView(animal: animals[0])
}
