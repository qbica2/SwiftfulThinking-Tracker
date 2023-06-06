//
//  PaddingAndSpacerBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 6.06.2023.
//

import SwiftUI

struct PaddingBootcamp: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(.yellow)
////            .padding()
////            .padding(.all, 10)
//            .padding(.vertical, 40)
//            .padding(.horizontal, 30)
//            .padding(.leading, 50)
//            .background(.blue)
        
        //MARK: - Real World Example
//        Text("Hello World!")
//            .font(.largeTitle)
//            .fontWeight(.semibold)
//            .frame(maxWidth: .infinity, alignment: .leading)
//            .padding(.leading, 20)
        
        //MARK: - Real World Example 2
        VStack(alignment: .leading) {
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            Text("This is the description of what we will do on this screen. It is multiple lines and we will align the text to the leading edge.")
        }
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y:10)
        )
        .padding(.horizontal, 10)
    }
}

struct PaddingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingBootcamp()
    }
}
