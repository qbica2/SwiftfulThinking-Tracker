//
//  ToolbarBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 13.06.2023.
//

import SwiftUI

struct ToolbarBootcamp: View {
    
    @State private var text: String = ""
    @State private var paths: [String] = []
    
    var body: some View {
        NavigationStack(path: $paths){
            ZStack {
                Color.white.ignoresSafeArea()
                
                ScrollView {
                    TextField("Type something...", text: $text)
                    
                    ForEach(0..<30) { _ in
                        RoundedRectangle(cornerRadius: 30)
                            .fill(.mint)
                            .frame(width: 200, height: 200)
                    }
                    
                }
            }
            
            
            .navigationTitle("Toolbar")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "heart.fill")
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "gear")
                }
//                ToolbarItem(placement: .navigationBarTrailing) {
//                    HStack {
//                        Image(systemName: "house.fill")
//                        Image(systemName: "gear")
//                    }
//                }
            }
            
//            .toolbar(.hidden, for: .navigationBar)
//            .toolbarBackground(.hidden, for: .navigationBar)
            .toolbarColorScheme(.dark, for: .navigationBar)
            .navigationBarTitleDisplayMode(.inline)
            .toolbarTitleMenu {
                Button("Screen 1") {
                    paths.append("Screen 1")
                }
                Button("Screen 2") {
                    paths.append("Screen 2")
                }
                
            }
            .navigationDestination(for: String.self) { value in
                Text(value)
            }
        }
        
    }
}

struct ToolbarBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToolbarBootcamp()
    }
}
