//
//  TextBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 4.06.2023.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .font(.largeTitle)
//            .italic()
////            .bold()
//            .fontWeight(.heavy)
////            .underline()
////            .underline(pattern: .dash)
//            .underline(pattern: .dot ,color: .red)
//            .strikethrough(pattern: .dash, color: .green)
        
//        Text("Hello Again!")
//            .font(.system(size: 24, weight: .semibold, design: .monospaced))
        
//        Text("Hello World!, This is the Swiftful Thinking Bootcamp. I am really enjoying this course and learning alot.")
////            .baselineOffset(55.0)
//            .kerning(2)  // spacing between letters
//            .foregroundColor(.cyan)
////            .multilineTextAlignment(.trailing)
//            .multilineTextAlignment(.center)
////            .multilineTextAlignment(.leading)
////            .background(.red)
//            .background(.black)
//            .frame(width: 200, height: 100, alignment: .center)
//            .minimumScaleFactor(0.1)
        Text("hello world!".capitalized)
            .frame(width: 200, height: 200, alignment: .bottomTrailing)
            .border(.blue)
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
