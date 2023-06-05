//
//  IconsBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 5.06.2023.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
//        Image(systemName: "heart.fill")
//            .resizable()
////            .aspectRatio(contentMode: .fit)
////            .scaledToFit()
//            .scaledToFill()
////            .font(.largeTitle)
////            .font(.system(size: 200))
//            .foregroundColor(.pink.opacity(0.8))
//            .frame(width: 300, height: 300)
//            .border(.black)
////            .clipped()
//
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
            .font(.largeTitle)
            .foregroundColor(.secondary)
    }
}

struct IconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootcamp()
    }
}
