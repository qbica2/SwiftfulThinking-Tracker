//
//  ImageBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 5.06.2023.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
//        Image("apple1")
//            .resizable()
////            .aspectRatio(contentMode: .fill)
//            .scaledToFill()
////            .scaledToFit()
//            .frame(width: 300, height: 200)
////            .clipped()
////            .border(.red)
////            .cornerRadius(150)
//            .clipShape(
////                Circle()
////                Ellipse()
//                RoundedRectangle(cornerRadius: 22)
//            )
        Image("Jerry")
            .renderingMode(.template)
            .foregroundColor(.cyan)
        
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
