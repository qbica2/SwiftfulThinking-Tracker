//
//  TextSelectionBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 12.06.2023.
//

import SwiftUI

struct TextSelectionBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .textSelection(.enabled)
//            .textSelection(.disabled) //  disabled by default
    }
}

struct TextSelectionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextSelectionBootcamp()
    }
}
