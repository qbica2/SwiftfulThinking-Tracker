//
//  GroupBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 13.06.2023.
//

import SwiftUI

struct GroupBootcamp: View {
    var body: some View {
        VStack(spacing: 30) {
            Text("Hello, World!")
                .font(.headline)
                .foregroundColor(.red)
            Group {
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .font(.title)
            .foregroundColor(.blue)
            .bold()
        }
    }
}

struct GroupBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GroupBootcamp()
    }
}
