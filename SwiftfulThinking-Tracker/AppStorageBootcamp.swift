//
//  AppStorageBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 11.06.2023.
//

import SwiftUI

struct AppStorageBootcamp: View {
    
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack {
            if let currentUserName {
                Text(currentUserName)
            }
            
            Button {
                let name: String = "qbica"
                currentUserName = name
            } label: {
                Text("Save".uppercased())
            }

        }
    }
}

struct AppStorageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBootcamp()
    }
}
