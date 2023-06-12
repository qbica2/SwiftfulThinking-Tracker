//
//  BackgroundMaterialsBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 12.06.2023.
//

import SwiftUI

struct BackgroundMaterialsBootcamp: View {
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
//            .background(.thinMaterial)
//            .background(Material.bar)
//            .background(.thickMaterial)
            .background(.ultraThinMaterial)
//            .background(.ultraThickMaterial)
//            .background(Material.regularMaterial)
//            .background(Material.ultraThin)
            .cornerRadius(30)
            
        }
        .ignoresSafeArea()
        .background(
            Image("Jerry")
        )
        
    }
}

struct BackgroundMaterialsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundMaterialsBootcamp()
    }
}
