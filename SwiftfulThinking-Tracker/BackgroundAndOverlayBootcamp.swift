//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 5.06.2023.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
         //MARK: - First Example
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(
////                .red
//
////                LinearGradient(
////                    gradient: Gradient(colors: [Color.pink.opacity(0.8), Color.red.opacity(0.4)]),
////                    startPoint: .leading,
////                    endPoint: .trailing)
//
//                Circle()
//                    .fill(LinearGradient(
//                        gradient: Gradient(colors: [Color.pink.opacity(0.8), Color.red.opacity(0.4)]),
//                        startPoint: .leading,
//                        endPoint: .trailing))
//                    .frame(width: 200, height: 200)
//            )
//            .background(
//                Circle()
//                    .fill(.blue)
//                    .frame(width: 250, height: 250)
//            )
        
        //MARK: - Second Example
//        Circle()
//            .fill(.green.opacity(0.5))
//            .frame(width: 100, height: 100)
//            .overlay(
//                Text("1")
//                    .font(.largeTitle)
//                    .foregroundColor(.white)
//            )
//            .background(
//                Circle()
//                    .fill(.cyan)
//                    .frame(width: 120, height: 120)
//            )
        
        //MARK: - Third Example
//        Rectangle()
//            .frame(width: 100, height: 100)
//            .overlay(
//                Rectangle()
//                    .fill(.mint)
//                    .frame(width: 50, height: 50)
//                , alignment: .topLeading
//            )
//            .background(
//                Rectangle()
//                    .fill(.red)
//                    .frame(width: 150, height: 150)
//                , alignment: .bottomTrailing
//            )
            
        //MARK: - Real World Example
        
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [.purple.opacity(0.6), .purple.opacity(1)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: .purple.opacity(0.4), radius: 10, x:0.0, y: 10.0)
                    .overlay(
                        Circle()
                            .fill(.blue)
                            .frame(width: 35, height: 35)
                            .overlay(
                                Text("5")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            )
                            .shadow(color: .purple.opacity(0.4), radius: 10, x: 5.0, y: 5.0)
                        , alignment: .bottomTrailing)
            )
    }
}

struct BackgroundAndOverlayBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayBootcamp()
    }
}
