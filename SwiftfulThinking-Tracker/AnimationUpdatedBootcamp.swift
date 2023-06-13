//
//  AnimationUpdatedBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 13.06.2023.
//

import SwiftUI

struct AnimationUpdatedBootcamp: View {
    
    @State private var animate1: Bool = false
    @State private var animate2: Bool = false

    var body: some View {
        ZStack {
            VStack (spacing: 40) {
                Button("Animate 1") {
                    animate1.toggle()
                }
                Button("Animate 2") {
                    animate2.toggle()
                }
                
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 100, height: 100)
                        .frame(maxWidth: .infinity, alignment: animate1 ? .leading : .trailing)
                        .background(Color.secondary)
                        .frame(maxHeight: .infinity, alignment: animate2 ? .top : .bottom)
                        .background(Color.mint)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.red)
                
                
            }
          
        }
        .animation(.spring(), value: animate1)
        .animation(.linear(duration: 3), value: animate2)
    }
}

struct AnimationUpdatedBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationUpdatedBootcamp()
    }
}
