//
//  GradientsBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 5.06.2023.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                .red
//                LinearGradient(
//                    gradient: Gradient(colors: [Color.pink.opacity(0.8), Color.red.opacity(0.4)]),
//                    startPoint: .topLeading,
//                    endPoint: .bottomTrailing)
                
//                RadialGradient(
//                    gradient: Gradient(colors: [Color.pink.opacity(0.8), Color.red.opacity(0.4)]),
//                    center: UnitPoint.leading,
//                    startRadius: 5,
//                    endRadius: 200)
                
                AngularGradient(
                    gradient: Gradient(colors: [Color.pink.opacity(0.8), Color.red.opacity(0.4)]),
                    center: UnitPoint.bottomTrailing,
                    angle: .degrees(45))
            )
            .frame(width: 300, height: 200)
    }
}

struct GradientsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientsBootcamp()
    }
}
