//
//  ContextMenuBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 9.06.2023.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var backgroundColor: Color = .pink
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image(systemName: "house.fill")
                .font(.title)
            
            Text("Swiftful Thinking")
                .font(.headline)
            
            Text("How to use Context Menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(
            LinearGradient(
                gradient: Gradient(colors: [backgroundColor.opacity(0.7), backgroundColor.opacity(1)]),
                startPoint: .leading,
                endPoint: .trailing)
                .cornerRadius(20)
        )
        
        .contextMenu {
            Button {
                backgroundColor = .mint
            } label: {
                HStack {
                    Text("Change color to mint")
                    Image(systemName: "flame.fill")
                        
                }
            }
            
            Button {
                backgroundColor = .orange
            } label: {
                HStack {
                    Text("Change color to orange")
                    Image(systemName: "flame.fill")
                }
            }
            
            Button {
                backgroundColor = .cyan
            } label: {
                Label("Change color to cyan", systemImage: "flag.2.crossed.circle")
            }

        }
    }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp()
    }
}
