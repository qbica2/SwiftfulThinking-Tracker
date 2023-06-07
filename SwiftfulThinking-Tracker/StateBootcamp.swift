//
//  StateBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 7.06.2023.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var backgroundColor: Color = Color.cyan
    @State var title: String = "Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
//            background
            backgroundColor
                .ignoresSafeArea()
            
//            content
            VStack (spacing: 20) {
                Text(title)
                    .font(.title)
                Text("Count: \(count)")
                    .underline()
                    .font(.headline)
                
                HStack (spacing: 10) {
                    Button {
                        count += 1
                        backgroundColor = .brown
                        title = "Button 1 pressed"
                        
                    } label: {
                        Text("Button 1".uppercased())
                            .padding()
                            .padding(.horizontal, 10)
                            .background(
                                Color.gray.opacity(0.2)
                                    .cornerRadius(12)
                            )
                            .shadow(radius: 10)
                    }
                    
                    Button {
                        count -= 1
                        backgroundColor = .pink
                        title = "Button 2 pressed"
                    } label: {
                        Text("Button 2".uppercased())
                            .padding()
                            .padding(.horizontal, 10)
                            .background(
                                Color.gray.opacity(0.2)
                                    .cornerRadius(12)
                            )
                            .shadow(radius: 10)
                    }

                }
                
                
            }
            .foregroundColor(.white)
        }
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}
