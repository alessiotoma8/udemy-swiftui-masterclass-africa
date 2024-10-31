//
//  InsetFactsView.swift
//  Africa
//
//  Created by Alessio Toma on 31/10/24.
//

import SwiftUI

struct InsetFactsView: View {
    let animal: AnimalModel
    var body: some View {
        GroupBox{
            TabView{
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }
            }
            .tabViewStyle(.page)
            .frame(minHeight: 148,idealHeight: 168,maxHeight: 180)
        }
    }
}

private let animals: [AnimalModel] = Bundle.main.decode("animals.json")
#Preview {
    InsetFactsView(animal: animals[0])
}
