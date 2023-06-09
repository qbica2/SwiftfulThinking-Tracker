//
//  ColorPicker.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 9.06.2023.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    
    @State var backgroundColor: Color = .red
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            ColorPicker(selection: $backgroundColor) {
                Text("Select a Color")
                    .foregroundColor(.white)
                    .font(.headline)
            }
            .padding()
            .background(.black)
            .cornerRadius(10)
            .padding(50)
        }
    }
}

struct ColorPickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerBootcamp()
    }
}
