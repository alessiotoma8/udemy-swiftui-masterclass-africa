//
//  AniamlDetailView.swift
//  Africa
//
//  Created by Alessio Toma on 30/10/24.
//

import SwiftUI

struct AnimalDetailView: View {
    let animal: AnimalModel
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .center,spacing: 20){
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                    
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                Group{
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
                    InsetGalleryView(animal: animal)
                }.padding(.horizontal)
                
                Group{
                    HeadingView(headingImage: "questionmark.circle", headingText: "Did you know?")
                    
                    InsetFactsView(animal: animal)
                }.padding(.horizontal)
                
                Group{
                    HeadingView(headingImage: "info.circle", headingText: "All about \(animal.name)")
                    
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }.padding(.horizontal)
                
                Group{
                    HeadingView(headingImage: "map", headingText: "National Parks")
                    
                    InsetMapView()
                }.padding(.horizontal)
                
                Group{
                    HeadingView(headingImage: "books.vertical", headingText: "Learn More")
                    
                    ExternalWebLinkView(animal: animal)
                }.padding(.horizontal)
            }
            .navigationBarTitle("Learn about \(animal.name)")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

private let animals: [AnimalModel] = Bundle.main.decode("animals.json")
#Preview {
    AnimalDetailView(animal: animals[0])
}
