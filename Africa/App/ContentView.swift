//
//  ContentView.swift
//  Africa
//
//  Created by Alessio Toma on 30/10/24.
//

import SwiftUI

struct ContentView: View {
    
    let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    let haptic = UIImpactFeedbackGenerator(style: .medium)
    
    @State private var isGridViewActive: Bool = false
    
    @State private var gridLayout:[GridItem] = [GridItem(.flexible())]
    @State private var gridColumn: Int = 1
    @State private var toolbarIcon: String = "square.grid.2x2"
    
    func gridSwitch(){
        gridLayout = Array(repeating: .init(.flexible()), count: gridLayout.count % 3 + 1)
        gridColumn = gridLayout.count
        
        switch gridColumn{
        case 1:
            toolbarIcon = "rectangle.grid.1x2"
        case 2:
            toolbarIcon = "square.grid.2x2"
        case 3:
            toolbarIcon = "square.grid.3x3"
        default:
            toolbarIcon = "square.grid.2x2"
        }
    }
    
    func resetSwitch(){
        gridLayout = [GridItem(.flexible())]
    }
    
    var body: some View {
        NavigationView{
            Group{
                if !isGridViewActive{
                    List{
                        CoverImageView()
                            .frame(height: 300)
                            .listRowInsets(EdgeInsets(top:0,leading: 0,bottom: 0,trailing: 0))
                        
                        ForEach(animals) { animal in
                            NavigationLink(
                                destination: AnimalDetailView(animal: animal)
                            ){
                                AnimalListItemView(animal: animal)
                            }
                        }
                        
                        HStack{
                            Spacer()
                            CreditsView()
                            Spacer()
                        }
                    }
                }else{
                    ScrollView(.vertical, showsIndicators: false){
                        LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10){
                            ForEach(animals){animal in
                                NavigationLink(
                                    destination: AnimalDetailView(animal: animal)
                                ){
                                    AnimalGridItemView(animal: animal)
                                }
                            }
                        }
                        .padding(10)
                        .animation(.easeInOut)
                    }
                }
            }
            .navigationBarTitle("Africa",displayMode: .large)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    HStack(spacing: 16){
                        Button(action: {
                            isGridViewActive = false
                            haptic.impactOccurred()
                            resetSwitch()
                        }){
                            Image(systemName: "square.fill.text.grid.1x2")
                                .font(.title2)
                                .foregroundColor(isGridViewActive ? .primary : .accentColor)
                        }
                        
                        Button(action: {
                            isGridViewActive = true
                            haptic.impactOccurred()
                            gridSwitch()
                        }){
                            Image(systemName: toolbarIcon)
                                .font(.title2)
                                .foregroundColor(!isGridViewActive ? .primary : .accentColor)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
