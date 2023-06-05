//
//  FrameBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 5.06.2023.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
//        Text( "hello asdjnaşskda")
//            .background(.blue)
////            .frame(width: 200, height: 200, alignment: .bottomTrailing)
//            .frame(maxWidth: .infinity, alignment: .trailing)
//            .background(.red)
        
        Text("Hello world")
            .background(.red)
            .frame(height: 100, alignment: .bottom)
            .background(.orange)
            .frame(width: 150, alignment: .leading)
            .background(.purple)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(.pink)
            .frame(height: 400, alignment: .top)
            .background(.green)
            .frame(maxHeight: .infinity, alignment: .bottom)
            .background(.yellow)
    }
}

struct FrameBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootcamp()
    }
}
