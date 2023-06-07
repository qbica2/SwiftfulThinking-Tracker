//
//  TernaryBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 7.06.2023.
//

import SwiftUI

struct TernaryBootcamp: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack {
            Button("Button") {
                isStartingState.toggle()
            }
            
            Text(isStartingState ? "Starting" : "Ending")
            
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 10)
                .fill(isStartingState ? .red : .blue)
                .frame(
                    width: isStartingState ? 100 : 70,
                    height: isStartingState ? 120 : 50
                )
        }
    }
}

struct TernaryBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TernaryBootcamp()
    }
}
