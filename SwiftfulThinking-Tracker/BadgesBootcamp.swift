//
//  BadgesBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 12.06.2023.
//

import SwiftUI

struct BadgesBootcamp: View {
    var body: some View {
        //MARK: - List
        List {
            Text("Favorites")
                .badge(33)
            Text("Favorites")
                .badge("new")
            Text("Favorites")
            Text("Favorites")
            
        }
        //MARK: - Tabview
//        TabView {
//            Color.red
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Favorites")
//                }
//
//            Color.orange
//                .tabItem {
//                    Image(systemName: "cart.fill")
//                    Text("Favorites")
//                }
//                .badge(34)
//
//            Color.green
//                .tabItem {
//                    Image(systemName: "gear")
//                    Text("Settings")
//                }
//        }
    }
}

struct BadgesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BadgesBootcamp()
    }
}
