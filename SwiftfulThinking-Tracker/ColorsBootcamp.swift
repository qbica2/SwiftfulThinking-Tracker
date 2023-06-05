//
//  ColorsBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 5.06.2023.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                Color.primary
//                Color(UIColor.secondarySystemBackground)
                Color("CustomColor")
            )
            .frame(width: 200, height: 100, alignment: .center)
//            .shadow(radius: 40)
            .shadow(color: Color("CustomColor").opacity(0.4), radius: 10, x: 10, y: -10)
    }
}

struct ColorsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorsBootcamp()
    }
}
