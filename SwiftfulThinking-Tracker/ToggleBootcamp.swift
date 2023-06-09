//
//  ToggleBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 9.06.2023.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State var isToggleOn: Bool = false
    @State var isSecondToggleOn: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Status")
                Text(isToggleOn ? "Online" : "Offline")
            }
            .font(.title)
            
            Toggle("Change status", isOn: $isToggleOn)
                .tint(.red)
            
            Toggle(isOn: $isSecondToggleOn) {
                Image(systemName: isSecondToggleOn ? "mic" : "mic.slash")
                    .font(.largeTitle)
            }
            
            Spacer()
        }
        .padding(.horizontal, 100)
        
    }
}

struct ToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootcamp()
    }
}
