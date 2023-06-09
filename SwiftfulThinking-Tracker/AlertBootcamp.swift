//
//  AlertBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 9.06.2023.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert: Bool = false
    @State var alertTitle: String = ""
    @State var alertMessage: String = ""
    @State var backgroundColor: Color = .red
    
    var body: some View {
        ZStack {
            
            backgroundColor
                .ignoresSafeArea()
            
            
            VStack {
                Button("Click here") {
                    alertTitle = "Firsst alert title"
                    alertMessage = "First alert message"
                    showAlert.toggle()
                }
                
                Button("Button 2", action: {
                    alertTitle = "Second alert title"
                    alertMessage = "Second alert message"
                    showAlert.toggle()
                })
            }
            //MARK: - Title & Buttons
//            .alert("login failed", isPresented: $showAlert) {
//                Button("OK") {
//                    backgroundColor = .pink
//                }
//            }
            //MARK: - Error & Buttons
            
//            .alert(isPresented: $showAlert, error: error?.localizedDescription) {
//                Button {
//
//                } label: {
//                    Text("Cancel")
//                }
//
//            }
            
            //MARK: - Title & Buttons & Message
            
            .alert(alertTitle, isPresented: $showAlert) {
                Button("OK") {
                    
                }
                Button("Delete") {
                    
                }
                Button("cancel") {
                    
                }
           
            } message: {
                Text(alertMessage)
            }
            
        }
    }
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}
