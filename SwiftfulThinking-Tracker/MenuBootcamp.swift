//
//  MenuBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 13.06.2023.
//

import SwiftUI

struct MenuBootcamp: View {
    var body: some View {
        Menu {
            Button {
                
            } label: {
                HStack{
                    Text("Filter by price")
                    Image(systemName: "dollarsign.circle")
                }
            }
            
            Button {
                
            } label: {
                HStack{
                    Text("Filter by likes")
                    Image(systemName: "heart.fill")
                }
            }

        } label: {
            Image(systemName: "gear")
                .font(.largeTitle)
        }

    }
}

struct MenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        MenuBootcamp()
    }
}
