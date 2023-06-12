//
//  ButtonStylesBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 12.06.2023.
//

import SwiftUI

struct ButtonStylesBootcamp: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Spacer()
                Button {
                    
                } label: {
                    Text("Button Tittle")
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .font(.headline)
                        .fontWeight(.black)
                }
                .buttonBorderShape(.roundedRectangle)
                .buttonStyle(.borderedProminent)
                .controlSize(.large)

                
                Button("Button Title") {
                    
                }
                .buttonStyle(.bordered)
                .controlSize(.large)
                .buttonBorderShape(.capsule)
                
                Button("Button Title") {
                    
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.regular)
                .buttonBorderShape(.roundedRectangle(radius: 12))
                
                Button("Button Title") {
                    
                }
                .buttonStyle(.borderless)
                .controlSize(.mini)
                
                Button("Button Title") {
                    
                }
                .buttonStyle(.plain)
                .controlSize(.small)
                
                Button("Button Title") {
                    
                }
                .buttonStyle(.bordered)
                .controlSize(.small)
                .buttonBorderShape(.roundedRectangle)
                
                Spacer()
                Spacer()
                Spacer()
            }
            .padding()
            .navigationTitle("Buttons")
        }
    }
}

struct ButtonStylesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStylesBootcamp()
    }
}
