//
//  InsetMapVIew.swift
//  Africa
//
//  Created by Alessio Toma on 31/10/24.
//

import SwiftUI
import MapKit

struct InsetMapView: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599), span: MKCoordinateSpan(latitudeDelta: 60, longitudeDelta: 60))
    
    var body: some View {
        Map(coordinateRegion: $region)
            .overlay(
                NavigationLink(
                    destination: MapView()
                ){
                    HStack{
                        Image(systemName: "mappin.circle")
                            .foregroundColor(.white)
                            .imageScale(.large)
                        Text("Locations")
                            .foregroundColor(.accentColor)
                            .fontWeight(.bold)
                    }
                    .padding(.vertical, 10)
                    .padding(.horizontal, 40)
                    .background(Color.black.opacity(0.4).cornerRadius(8))
                }.padding(12)
                , alignment: .topTrailing 
            )
            .frame(height: 256)
            .cornerRadius(12)
    }
}

#Preview {
    InsetMapView()
}
