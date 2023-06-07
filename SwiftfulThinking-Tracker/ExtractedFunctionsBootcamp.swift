//
//  ExtractedFunctionsBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 7.06.2023.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    
    @State var backgroundColor: Color = Color.secondary
    @State var title: String = "Title"
    @State var button1Pressed: Bool = false
    @State var button2Pressed: Bool = false
    
    var body: some View {
        ZStack {
            //        background
            backgroundColor
                .ignoresSafeArea()
            
            //        content
            contentLayer
            
        }
        
    }
    
    var contentLayer: some View {
        VStack {
            
            largeTitle
            
            HStack {
                Button {
                    button1Pressed = true
                    button2Pressed = false
                    buttonPressed()
                } label: {
                    buttonLabel
                }
                Button {
                    button1Pressed = false
                    button2Pressed = true
                    buttonPressed()
                } label: {
                   buttonLabel
                }
            }
        }
    }
    
    var buttonLabel: some View {
       
        Text("Button".uppercased())
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .background(.blue.opacity(0.5))
            .cornerRadius(12)
    }
    
    var largeTitle: some View {
        Text(title)
            .font(.largeTitle)

    }
    
    func buttonPressed(){
        if button1Pressed {
            backgroundColor = .clear
            title = "1 Pressed"
            
        } else {
            backgroundColor = .secondary
            title = "2 Pressed"
        }
       
    }
}

struct ExtractedFunctionsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctionsBootcamp()
    }
}
