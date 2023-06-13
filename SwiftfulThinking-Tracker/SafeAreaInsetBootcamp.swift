//
//  SafeAreaInsetBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 13.06.2023.
//

import SwiftUI

struct SafeAreaInsetBootcamp: View {

    var body: some View {
        NavigationStack {
            List(0..<10) { _ in
                RoundedRectangle(cornerRadius: 20)
                    .fill(.red)
                    .frame(height: 200)
                
            }
            .navigationTitle("Safe Area Insets")
            //            .overlay(alignment: .bottom) {
            //                Text("Hello bottom area")
            //                    .foregroundColor(.white)
            //                    .frame(maxWidth: .infinity)
            //                    .background(Color.primary.opacity(0.8))
            //            }
            
            //            .safeAreaInset(edge: .bottom) {
            //                Text("Hello bottom area")
            //                    .foregroundColor(.white)
            //                    .frame(maxWidth: .infinity)
            //                    .background(Color.primary.opacity(0.8))
            //            }
            
            .safeAreaInset(edge: .bottom, alignment: .trailing) {
                Image(systemName: "arrow.up")
                    .padding()
                    .background(Color.yellow.ignoresSafeArea(edges: .bottom))
                    .clipShape(Circle())
                    .padding()
                    .onTapGesture {
                        print("Up")
                    }
            }
            
        }
    }
}

struct SafeAreaInsetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaInsetBootcamp()
    }
}
