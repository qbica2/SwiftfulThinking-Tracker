//
//  ExtractSubviewsBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 7.06.2023.
//

import SwiftUI

struct ExtractSubviewsBootcamp: View {
    
    @State var backgroundColor: Color = .cyan
    @State var appleCount: Int = 10
    @State var bananaCount: Int = 5
    @State var orangeCount: Int = 58
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack {
            VStack(spacing: 20){
                MyItem(title: "Apples", count: appleCount, color: .red)
                CountChangerButton(count: $appleCount, color: $backgroundColor, type: .plus)
                CountChangerButton(count: $appleCount, color: $backgroundColor, type: .minus)
            }
            VStack(spacing: 20) {
                MyItem(title: "Bananas", count: bananaCount, color: .yellow)
                CountChangerButton(count: $bananaCount, color: $backgroundColor, type: .plus)
                CountChangerButton(count: $bananaCount, color: $backgroundColor, type: .minus)
            }
            VStack(spacing: 20) {
                MyItem(title: "Oranges", count: orangeCount, color: .orange)
                CountChangerButton(count: $orangeCount, color: $backgroundColor, type: .plus)
                CountChangerButton(count: $orangeCount, color: $backgroundColor, type: .minus)

            }
        }
    }
}

struct ExtractSubviewsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviewsBootcamp()
    }
}

struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack(spacing: 10) {
            Text("\(count)")
                .font(.largeTitle)
                .underline()
            Text(title)
        }
        .padding()
        .padding(.horizontal, 10)
        .background(color)
        .cornerRadius(12)
    }
}

enum CountChangerButtonType {
    case plus
    case minus
}

struct CountChangerButton: View {
    
    @Binding var count: Int
    @Binding var color: Color
    var type: CountChangerButtonType
    
    var body: some View {
        Button {
          countChangeButtonPressed()
        } label: {
           Circle()
                .fill(color)
                .frame(width: 50, height: 50)
                .shadow(radius: 10)
                .overlay {
                    Image(systemName: type == .minus ? "minus": "plus")
                        .foregroundColor(.white)
                        .font(.title)
                }
        }
    }
    
    func countChangeButtonPressed(){
        if type == .plus {
            count += 1
        } else {
            count -= 1
        }
    }
}
