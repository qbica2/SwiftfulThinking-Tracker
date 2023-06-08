//
//  AnimationTimingBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 8.06.2023.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    
    @State var isAnimated: Bool = false
    let timing: Double = 1.0
    
    var body: some View {
        VStack {
            Button("Animate") {
                isAnimated.toggle()
            }
            Spacer()
            
            HStack {
                VStack {
                    Text("default")
                    Spacer()
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 50, height: isAnimated ? 500 : 100)
                        .animation(Animation.default, value: isAnimated)
                }
                .padding(5)
                
                VStack {
                    Text("easeIn")
                    Spacer()
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 50, height: isAnimated ? 500 : 100)
                        .animation(.easeIn(duration: timing), value: isAnimated)
                }
                .padding(5)
                
                VStack {
                    Text("easeOut")
                    Spacer()
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 50, height: isAnimated ? 500 : 100)
                        .animation(.easeOut(duration: timing), value: isAnimated)
                }
                .padding(5)
                
                VStack {
                    Text("easeInOut")
                    Spacer()
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 50, height: isAnimated ? 500 : 100)
                        .animation(.easeInOut(duration: timing), value: isAnimated)
                }
                .padding(5)
                
                VStack {
                    Text("linear")
                    Spacer()
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 50, height: isAnimated ? 500 : 100)
                        .animation(.linear(duration: timing), value: isAnimated)
                }
                .padding(5)
                
            }
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 300 : 100, height: 50)
                .animation(.spring(
                    response: 0.5,
                    dampingFraction: 0.4,
                    blendDuration: 1.0
                ), value: isAnimated)
            
        }
    }
}

struct AnimationTimingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingBootcamp()
    }
}
