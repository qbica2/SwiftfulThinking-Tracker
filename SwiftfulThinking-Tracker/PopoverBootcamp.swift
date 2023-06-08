//
//  PopoverBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 8.06.2023.
//

import SwiftUI

struct PopoverBootcamp: View {
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack {
            Color.pink
                .ignoresSafeArea()
            
            VStack {
                Button("Button") {
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                Spacer()
            }
            
            //MARK: - Sheet
            
//            .sheet(isPresented: $showNewScreen) {
//                NewScreen()
//            }
            
            //MARK: - Transition
            
//            ZStack {
//                if showNewScreen {
//                    NewScreen(showScreen: $showNewScreen)
//                        .padding(.top, 200)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring())
//                }
//            }
//            .zIndex(2)
            
            //MARK: - Animation Offset
            
            NewScreen(showScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring())

            
            
        }
    }
}

struct NewScreen: View {
    
//    @Environment(\.presentationMode) var presentationMode
    @Binding var showScreen: Bool
    
    var body: some View {
        ZStack (alignment: .topLeading) {
            Color.mint
                .ignoresSafeArea()
            
            Button {
//                presentationMode.wrappedValue.dismiss()
                showScreen.toggle()
            } label: {
                Image(systemName: "xmark")
                    .font(.largeTitle)
                    .padding()
            }
            
        }
    }
}

struct PopoverBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PopoverBootcamp()
//        NewScreen()
    }
}
