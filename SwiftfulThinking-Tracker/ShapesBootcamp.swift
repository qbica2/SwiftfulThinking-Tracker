//
//  ShapesBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 4.06.2023.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
//        Circle()
////            .fill(.blue)
////            .foregroundColor(.red)
////            .stroke(.blue)
////            .stroke(Color.red, lineWidth: 22)
////            .stroke(Color.orange, style: StrokeStyle(lineWidth: 12, lineCap: .square, dash: [40]))
//
//        Circle()
//            .trim(from: 0.2, to: 1.0)
//            .stroke(.purple, lineWidth: 22)
        
//        Ellipse()
////            .frame(width: 200, height: 100)
////            .foregroundColor(.red)
//            .stroke(Color.blue, lineWidth: 22)
//            .frame(width: 220, height: 100)
//
//        Capsule(style: .circular)
//            .foregroundColor(.black)
//            .frame(width: 200, height: 100)
        
//        Rectangle()
        
        RoundedRectangle(cornerRadius: 10)
//            .frame(width: 300, height: 200)
//            .foregroundColor(.cyan)
            .stroke(.red, lineWidth: 12)
            .frame(width: 300, height: 200)


    }
    
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
