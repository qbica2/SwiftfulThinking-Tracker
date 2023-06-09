//
//  SliderBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 10.06.2023.
//

import SwiftUI

struct SliderBootcamp: View {
    
    @State var sliderValue: Double = 2.0
    @State var primaryColor: Color = .brown
    
    var body: some View {
        VStack (spacing: 20) {
            Text("Rating")
            //            Text("\(sliderValue)")
            Text(String(format: "%.1f", sliderValue))
                .font(.largeTitle)
                .foregroundColor(primaryColor)
            //            Slider(value: $sliderValue)
            
            Slider(
                value: $sliderValue, in: 1...10, step: 0.5, label: {
//                    HStack {
//                        Text("Rating")
//                        Text("\(sliderValue)")
//                    }
                }, minimumValueLabel: {
                    Text("1")
                        .font(.title)
                        .foregroundColor(primaryColor)
                }, maximumValueLabel: {
                    Text("10")
                        .font(.title)
                        .foregroundColor(primaryColor)
                }, onEditingChanged: { _ in
                    primaryColor = randomColorPicker()
                })
            .padding()
            .tint(primaryColor)
        }
    }
    
    func randomColorPicker() -> Color {
        let colors: [Color] = [
             .red,
             .blue,
             .green,
             .yellow,
             .orange,
             .purple,
             .pink,
             .gray,
             .mint,
             .indigo
         ]
        
        return colors.randomElement() ?? .mint
    }
}

struct SliderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootcamp()
    }
}
