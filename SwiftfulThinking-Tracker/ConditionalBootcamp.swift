//
//  ConditionalBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 7.06.2023.
//

import SwiftUI

struct ConditionalBootcamp: View {
    @State var showCircle: Bool = false
    @State var showRectange: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        ZStack {
            Color.mint
                .ignoresSafeArea()
            VStack (spacing: 30) {
                
                ConditionalButton(isShow: $isLoading, buttonTitle: "is Loading")
                
                ConditionalButton(isShow: $showCircle, buttonTitle: "Circle Button")
                
                ConditionalButton(isShow: $showRectange, buttonTitle: "Rectangle Button")
                
                if showCircle {
                    Circle()
                        .fill(.indigo)
                        .frame(width: 70, height: 70)
                        .shadow(radius: 10)
                }
                
                if showRectange {
                    Rectangle()
                        .fill(.indigo)
                        .frame(width: 70, height: 70)
                        .shadow(radius: 10)
                }
                
                if showCircle && showRectange {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.indigo)
                        .frame(width: 100, height: 70)
                        .shadow(radius: 10)
                }
                
                if !showCircle && !showRectange {
                    Ellipse()
                        .fill(.indigo)
                        .frame(width: 60, height: 100)
                        .shadow(radius: 10)
                }
                
                if showCircle || showRectange {
                    Capsule()
                        .fill(.indigo)
                        .frame(width: 100, height: 70)
                        .shadow(radius: 10)
                }
                
                if isLoading {
                    ProgressView()
                }
                
                
                Spacer()

            }
        }
    }
}

struct ConditionalBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalBootcamp()
    }
}

struct ConditionalButton: View {
    @Binding var isShow: Bool
    let buttonTitle: String
    
    var body: some View {
        Button {
            isShow.toggle()
        } label: {
            HStack {
                Text("\(buttonTitle):")
                    .font(.callout)
                Text(isShow.description.uppercased())
                    .font(.headline)
                    .bold()
            }
            .foregroundColor(.white)
            .padding()
            .background(
                Color.mint
                    .cornerRadius(12)
                    .shadow(radius: 10)
            )
            
                
        }

    }
}

