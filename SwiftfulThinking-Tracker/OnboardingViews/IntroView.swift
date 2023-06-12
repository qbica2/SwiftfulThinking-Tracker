//
//  IntroView.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 12.06.2023.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("signed_in") var currentUserSignIn: Bool = false
    
    var body: some View {
        ZStack {
            RadialGradient(
                gradient: Gradient(colors: [Color.pink.opacity(0.8), Color.red.opacity(0.4)]),
                center: .topLeading,
                startRadius: 5,
                endRadius: UIScreen.main.bounds.height)
            
            .ignoresSafeArea()
            
            if currentUserSignIn {
                ProfileExampleView()
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .top)))

            } else {
                OnboardingView()
                    .transition(.asymmetric(insertion: .move(edge: .top), removal: .move(edge: .bottom)))
            }
            
        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
