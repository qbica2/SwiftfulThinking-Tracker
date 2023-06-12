//
//  NavigationStackBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 13.06.2023.
//

import SwiftUI

struct NavigationStackBootcamp: View {
    
    let fruits = ["Apple", "Orange", "Banana"]
    @State private var stackPath: [String] = []
    
    var body: some View {
        NavigationStack(path: $stackPath) {
            ScrollView {
                VStack (spacing: 30) {
                    
                    Button {
                        stackPath.append(contentsOf: [
                            "Coconut","Watermelon", "Mango"
                        ])
                    } label: {
                        Text("Multiple Segue")
                    }

                    
                    ForEach(fruits, id: \.self) { fruit in
                        NavigationLink(value: fruit) {
                            Text(fruit)
                        }
                    }
                    
                    ForEach(0..<10) { x in
                        NavigationLink(value: x) {
                            Text("Click me: \(x)".capitalized)
                        }
                    }
                }
            }
            .navigationTitle("Navigation Stack")
            .navigationDestination(for: Int.self) { value in
                MySecondScreen(value: value)
            }
            
            .navigationDestination(for: String.self) { value in
                Text("Fruit Screen: \(value)")
            }
        }
    }
}

struct MySecondScreen: View {
    
    let value: Int
    init(value: Int) {
        self.value = value
        print("Init screen \(value)")
    }
    
    var body: some View {
        Text("Screen: \(value)")
    }
}

struct NavigationStackBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStackBootcamp()
    }
}
