//
//  MapAnnotationView.swift
//  Africa
//
//  Created by Alessio Toma on 31/10/24.
//

import SwiftUI

struct MapAnnotationView: View {
    let location: LocationModel
    
    @State private var animation: Double = 0.0
    
    var body: some View {
        ZStack{
            Circle().fill(Color.accentColor)
                .frame(width: 54,height: 54)
            
            Circle()
                .stroke(Color.accentColor, lineWidth: 2)
                .frame(width: 52,height: 52)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - animation)
            
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48,height: 48)
                .clipShape(Circle())
        }
        .onAppear{
            withAnimation(.easeInOut(duration: 2).repeatForever(autoreverses: false)){
                animation = 1
            }
        }
    }
}

private let locations: [LocationModel] = Bundle.main.decode("locations.json")
#Preview {
    MapAnnotationView(location: locations[0])
}
