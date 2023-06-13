//
//  ResizableSheetBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 13.06.2023.
//

import SwiftUI

struct ResizableSheetBootcamp: View {
    
    @State private var showSheet: Bool = false
    @State private var detents: PresentationDetent = .large
    
    var body: some View {
        Button("show sheet") {
            showSheet.toggle()
        }
        
        .sheet(isPresented: $showSheet) {
            MySheetView(detent: $detents)
//                .presentationDetents([.medium])
//                .presentationDetents([.large])
//                .presentationDetents([.medium, .large])
//                .presentationDetents([.fraction(0.1)])
//                .presentationDetents([.fraction(0.1), .fraction(0.4), .medium, .large])
//                .presentationDragIndicator(.hidden)
//                .interactiveDismissDisabled()
            
        }
    }
}

struct MySheetView: View {
    
    @Binding var detent: PresentationDetent
    
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            VStack(spacing: 20) {
                Button(" 30 % ") {
                    detent = .fraction(0.3)
                }
                
                Button("Medium") {
                    detent = .medium
                }
                
                Button("600px") {
                    detent = .height(600)
                }
                
                Button("Large") {
                    detent = .large
                }
            }
        }
        .presentationDetents([.fraction(0.3), .medium, .height(600), .large], selection: $detent)
        .presentationDragIndicator(.hidden)
    }
}

struct ResizableSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ResizableSheetBootcamp()
    }
}
