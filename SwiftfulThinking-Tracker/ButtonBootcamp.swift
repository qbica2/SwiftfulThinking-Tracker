//
//  ButtonBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 7.06.2023.
//

import SwiftUI

struct ButtonBootcamp: View {
    
    @State var title: String = "Button Title"
    
    var body: some View {
        VStack (spacing: 15) {
            Text(title)
            
            Button("First button") {
                title = "first button pressed"
            }
            .accentColor(.green)
            
            Button {
                self.title = "second button pressed"
            } label: {
                Text("Second Button")
                    .background(
                        RoundedRectangle( cornerRadius: 12)
                            .fill(.red)
                            .frame(width: 200, height: 40)
                    )
            }
            
            Button {
                self.title = "Third button pressed"
            } label: {
                Text("3. Button".uppercased())
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .padding()
                    .padding(.horizontal, 20)
                    .foregroundColor(.white)
                    .background(
                        Color.cyan
                            .cornerRadius(12)
                            .shadow(radius: 10)
                    )
                    
            }
            
            Button {
                self.title = "heart"
            } label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(.pink)
                    )
            }
            
            Button {
                self.title = "finish"
            } label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(.green)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Capsule()
                            .stroke(Color.green ,lineWidth: 2)
                    )
            }



        }
    }
}

struct ButtonBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonBootcamp()
    }
}
