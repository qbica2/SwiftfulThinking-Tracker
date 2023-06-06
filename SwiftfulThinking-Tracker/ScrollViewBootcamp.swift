 //
//  ScrollViewBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 6.06.2023.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
//        ScrollView(.horizontal, showsIndicators: false) {
//            HStack {
//                ForEach(0..<20) { index in
//                    Rectangle()
//                        .fill(.red)
//                        .frame (width: 200, height: 200)
//                }
//            }
//        }
        //MARK: - Netflix Example
        ScrollView {
            VStack {
                ForEach(0..<10) { index in
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack{
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius: 25)
                                                   .fill(.white)
                                                   .frame(width: 200, height: 150)
                                                   .shadow(radius: 10)
                                                   .padding()
                            }
                        }
                    }
               
                }
            }
        }
        
    }
}

struct ScrollViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootcamp()
    }
}
