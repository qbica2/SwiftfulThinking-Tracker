//
//  IfLetGuardBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 10.06.2023.
//

import SwiftUI

struct IfLetGuardBootcamp: View {
    
    @State var currentUserID: String? = "nil"
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationStack {
            
            VStack {
                Text("Here we are pacticing safe coding!")
                if let displayText {
                    Text(displayText)
                }
                
                if isLoading {
                    ProgressView()
                }

                Spacer()
            }
            .onAppear(perform: {
//                loadData()
                loadData2()
            })
            .navigationTitle("Safe Coding")
        }
    }
    
    func loadData(){
        
        if let currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                
                displayText = "This is the new data!. User id is: \(currentUserID)"
                isLoading = false
            }
        } else {
            displayText = "Error. NO User ID"
        }
        
    }
    
    func loadData2(){
        
        guard let userID = currentUserID else {
            displayText = "Error. NO User ID"
            return
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            
            displayText = "This is the new data!. User id is: \(userID)"
            isLoading = false
        }
    }
}

struct IfLetGuardBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IfLetGuardBootcamp()
    }
}
