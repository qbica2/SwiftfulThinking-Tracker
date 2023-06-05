//
//  StacksBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 5.06.2023.
//

import SwiftUI

struct StacksBootcamp: View {
    var body: some View {
//        Vstack -> vertical
//        Hstack -> Horizontol
//        Zstack -> z Index
        
        //MARK: - example
//        ZStack{
//            Circle()
//                .fill(Color.red)
//                .frame(width: 200, height: 200)
//
//            Circle()
//                .fill(Color.yellow)
//                .frame(width: 150, height: 150)
//
//            Circle()
//                .fill(Color.green)
//                .frame(width: 100, height: 100)
//        }
        
        //MARK: - example
//        VStack(alignment: .leading, spacing: 20 ,content:{
//            Rectangle()
//                .fill(.red)
//                .frame(width: 200, height: 200)
//            Rectangle()
//                .fill(.blue)
//                .frame(width: 150, height: 150)
//            Rectangle()
//                .fill(.pink)
//                .frame(width: 100, height: 100)
//        })
//        .border(.black)
        
        //MARK: - example
//        ZStack(alignment: .bottomTrailing ,content:{
//            Rectangle()
//                .fill(.red)
//                .frame(width: 200, height: 200)
//            Rectangle()
//                .fill(.blue)
//                .frame(width: 150, height: 150)
//            Rectangle()
//                .fill(.green)
//                .frame(width: 100, height: 100)
//        })
        
        //MARK: - example
//        ZStack(alignment: .top){
//            Rectangle()
//                .fill(.black)
//                .frame(width: 350, height: 500)
//
//            VStack (alignment: .leading, spacing: 20){
//                Rectangle()
//                    .fill(.bar)
//                    .frame(width: 150, height: 150)
//
//                Rectangle()
//                    .fill(.cyan)
//                    .frame(width: 100, height: 100)
//
//                HStack (alignment: .bottom) {
//                    Rectangle()
//                        .fill(.red)
//                        .frame(width: 50, height: 50)
//
//                    Rectangle()
//                        .fill(.purple)
//                        .frame(width: 25, height: 25)
//
//                    Rectangle()
//                        .fill(.orange)
//                        .frame(width: 75, height: 75)
//                }
//                .background(.yellow)
//            }
//            .background(Color.secondary)
//
//        }
        
        //MARK: - Real World Example
//        VStack(alignment: .center, spacing: 20){
//            Text("5")
//                .font(.largeTitle)
//                .underline()
//            Text("Items in your cart:")
//                .font(.caption)
//                .foregroundColor(.gray)
//        }
        //MARK: - Real World Example 2
        VStack(spacing: 50){
            ZStack{
                Circle()
                    .frame(width: 100, height: 100)
                
                Text("1")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            Text("1")
                .font(.title)
                .foregroundColor(.white)
                .background(
                    Circle()
                        .frame(width: 100, height: 100)
                )
            
            Text("same")
            
        }
    }
}

struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
    }
}
