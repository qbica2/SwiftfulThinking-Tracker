//
//  InitializerBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 6.06.2023.
//

import SwiftUI

struct InitializerBootcamp: View {
    
    let backgroundColor: LinearGradient
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = LinearGradient(gradient: Gradient(colors: [.red.opacity(0.4), .red.opacity(0.8)]), startPoint: .topLeading, endPoint: .bottomTrailing)
        } else if fruit == .orange {
            self.title = "Oranges"
            self.backgroundColor = LinearGradient(gradient: Gradient(colors: [.orange.opacity(0.4), .orange.opacity(0.8)]), startPoint: .topLeading, endPoint: .bottomTrailing)
        } else {
            self.title = "Banana"
            self.backgroundColor = LinearGradient(gradient: Gradient(colors: [.yellow.opacity(0.4), .yellow.opacity(0.8)]), startPoint: .topLeading, endPoint: .bottomTrailing)
        }
    }
    
    enum Fruit {
        case apple
        case orange
        case banana
    }
    
    var body: some View {
        VStack(spacing: 12) {
//            Text(String(count))
            Text("\(count)")
                .font(.largeTitle)
                .underline()
            Text(title)
                .font(.headline)
        }
        .frame(width: 100, height: 100)
        .foregroundColor(.white)
        .background(backgroundColor)
        .cornerRadius(20)
        
    }
}

struct InitializerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            InitializerBootcamp(count: 12, fruit: .apple)
            InitializerBootcamp(count: 22, fruit: .orange)
            InitializerBootcamp(count: 2, fruit: .banana)

        }
    }
}
