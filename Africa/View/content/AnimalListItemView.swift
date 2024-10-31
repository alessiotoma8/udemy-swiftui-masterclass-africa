//
//  AnimalListItemView.swift
//  Africa
//
//  Created by Alessio Toma on 30/10/24.
//

import SwiftUI

struct AnimalListItemView: View {
    
    let animal: AnimalModel
    
    var body: some View {
        HStack(alignment: .center,spacing: 16){
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90,height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            VStack(alignment: .leading,spacing: 8){
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            }
        }
    }
}

private let animals: [AnimalModel] = Bundle.main.decode("animals.json")
#Preview {
    AnimalListItemView(animal: animals[0])
        .previewLayout(.sizeThatFits)
}
