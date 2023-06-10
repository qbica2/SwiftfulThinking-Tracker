//
//  DocumantationBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 10.06.2023.
//

import SwiftUI

struct DocumantationBootcamp: View {
    
    //MARK: - PROPERTIES
    
    @State var fruits: [String] = [
        "Apples", "Oranges", "Bananas"
    ]
    @State var showAlert: Bool = false
    
    //MARK: - BODY
    
    // Qbica - Working copy - things to do:
    /*
     1) Fix title
     2) Fix alert
     */
    
    var body: some View {
        NavigationView {
            ZStack {
                // background
                Color.red.ignoresSafeArea()
                
                // foreground
                foregroundLayer
                    .navigationTitle("Documentation")
                    .navigationBarItems(trailing:
                                            Button("ALERT", action: {
                        showAlert.toggle()
                    })
                    )
//                    .alert(isPresented: $showAlert, content: {
//                        getAlert(text: "This is the alert!")
//                    })
//                .alert(isPresented: , content:) is deprecated
                    .alert("This is the alert!", isPresented: $showAlert) {
                        Button("Close") {
                            showAlert.toggle()
                        }
                    }
                
            }
        }
    }
    
    /// This is the foreground layer that holds a scrollView.
    private var foregroundLayer: some View {
        ScrollView {
            Text("Hello")
            ForEach(fruits, id: \.self) { fruit in
                Text(fruit)
                    .font(.headline)
            }
        }
    }
    
    //MARK: - FUNCTIONS
    
    /// Gets an alert with a specified title.
    ///
    /// This function creates and returns an alert immediately. The alert will have a title based on the text parameter but it will NOT have a message.
    /// ```
    /// getAlert(text: "Hi") -> Alert(title: Text("Hi"))
    /// ```
    ///
    /// - Warning: There is no additional message in this Alert.
    /// - Parameter text: This is the title for the alert.
    /// - Returns: Returns an alert with a title.
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
    
}

    //MARK: - PREVIEW

struct DocumantationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DocumantationBootcamp()
    }
}
