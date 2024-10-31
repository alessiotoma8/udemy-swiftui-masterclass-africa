//
//  CreditsVIew.swift
//  Africa
//
//  Created by Alessio Toma on 31/10/24.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack{
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128,height: 128)
            Text("""
            Copyright © Alessio Toma
            All right reserved
            Better Apps ♡ Less Code
            """)
            .font(.footnote).multilineTextAlignment(.center)
        }
        .padding()
        .opacity(0.4)
        
    }
}

#Preview {
    CreditsView()
}
