//
//  SpacerBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 6.06.2023.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
//        HStack {
//            Spacer()
//
//            Rectangle()
//                .fill(.green)
//                .frame(width: 50, height: 50)
//
//            Spacer()
//
//            Rectangle()
//                .fill(.green)
//                .frame(width: 50, height: 50)
//
//            Spacer()
//
//            Rectangle()
//                .fill(.green)
//                .frame(width: 50, height: 50)
//
//            Spacer()
//        }
//        .background(.yellow)
//        .padding(.horizontal, 200)
//        .background(Color.blue)
        
        //MARK: - Example
        
        VStack {
            HStack {
                Image(systemName: "xmark")
                Spacer()
                Image(systemName: "gear")
            }
            .font(.title)
            .padding(.horizontal)
            
            Spacer()
            
            Rectangle()
                .frame(height: 55)
        }
        
    }
}

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}
