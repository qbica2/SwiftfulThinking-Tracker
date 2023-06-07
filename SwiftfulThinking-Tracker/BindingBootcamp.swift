//
//  BindingBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 7.06.2023.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgroundColor: Color = Color.pink
    @State var title: String = "title"
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack {
                TitleView(title: $title)
                    
                ButtonView(color: $backgroundColor, title: $title, buttonTitle: "change ")

            }
        }
    }
}

struct BindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootcamp()
    }
}

struct TitleView: View {
    
    @Binding var title: String
    
    var body: some View {
        Text(title.uppercased())
            .font(.largeTitle)
            .foregroundColor(.white)
            .underline()
    }
}

struct ButtonView: View {
    
    @Binding var color: Color
    @Binding var title: String
    let buttonTitle: String
    
    var body: some View {
        Button {
            buttonPressed()
        } label: {
            Text(buttonTitle.capitalized)
                .font(.callout)
                .bold()
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal, 10)
                .background(
                    color
                        .cornerRadius(10)
                        .shadow(radius: 10)
                )
        }
    }
    
    func buttonPressed(){
        let colors: [ColorGroup] = [
            ColorGroup(color: .red, name: "red"),
            ColorGroup(color: .gray, name: "gray"),
            ColorGroup(color: .pink, name: "pink"),
            ColorGroup(color: .blue, name: "blue"),
            ColorGroup(color: .cyan, name: "cyan"),
            ColorGroup(color: .indigo, name: "indigo"),
            ColorGroup(color: .green, name: "green"),
            ColorGroup(color: .mint, name: "mint")
        ]
        let colorGroup = colors.randomElement()
        color = colorGroup?.color ?? .mint
        title = colorGroup?.name ?? "mint"
        
    }
}

struct ColorGroup {
    let color: Color
    let name: String
}
