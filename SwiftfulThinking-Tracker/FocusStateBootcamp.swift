//
//  FocusStateBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 12.06.2023.
//

import SwiftUI

struct FocusStateBootcamp: View {
    
    enum OnboardingField: Hashable {
        case username
        case password
    }
    
    @State private var username: String = ""
    @State private var password: String = ""
    @FocusState private var fieldInFocus: OnboardingField?
    
    var body: some View {
        VStack (spacing: 40) {
            TextField("Add your name here...", text: $username)
                .padding()
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
                .focused($fieldInFocus, equals: .username)
            
            SecureField("Add your password here...", text: $password)
                .padding()
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
                .focused($fieldInFocus, equals: .password)
            
            Button {
                let usernameValid = !username.isEmpty
                let passwordValid = !password.isEmpty
                
                if usernameValid && passwordValid {
                    print("sign up")
                } else if usernameValid {
                    fieldInFocus = .password
                } else {
                    fieldInFocus = .username
                }
            } label: {
                Text("Sign UP 🚀")
            }

        }
        .padding()
    }
}

struct FocusStateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateBootcamp()
    }
}
