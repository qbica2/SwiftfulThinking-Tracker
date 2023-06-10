//
//  TapGestureBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 10.06.2023.
//

import SwiftUI

struct TapGestureBootcamp: View {
    
    @State var isSelected: Bool = false
    
    var body: some View {
        VStack (spacing: 50) {
            RoundedRectangle(cornerRadius: 25)
                .frame(height: 250)
                .foregroundColor(isSelected ? .mint : .pink)
            Button {
                isSelected.toggle()
            } label: {
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .cornerRadius(20)
            }
            
            Text("Button")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.blue)
                .cornerRadius(20)
                .onTapGesture(count: 3) {
                    isSelected.toggle()
                }
                .onLongPressGesture(minimumDuration: 3.0, perform: {
                    isSelected = false
                })
            Spacer()
        

        }
        .padding(30)
    }
}

struct TapGestureBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureBootcamp()
    }
}
