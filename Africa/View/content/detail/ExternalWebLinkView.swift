//
//  ExternalWebLinkView.swift
//  Africa
//
//  Created by Alessio Toma on 31/10/24.
//

import SwiftUI

struct ExternalWebLinkView: View {
    
    let animal: AnimalModel
    
    var body: some View {
        GroupBox{
            HStack{
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group{
                    Image(systemName: "arrow.up.right.square")
                    
                    Link(animal.name, destination: URL(string: animal.link) ?? URL(string: "https://wikipedia.org")!)
                }.foregroundColor(.accentColor)
            }
        }
    }
}

private let animals: [AnimalModel] = Bundle.main.decode("animals.json")
#Preview {
    ExternalWebLinkView(animal: animals[0])
}
