//
//  TabViewBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 10.06.2023.
//

import SwiftUI

struct TabViewBootcamp: View {
    
    @State var selectedTab: Int = 3
    
    var body: some View {
//        TabView(selection: $selectedTab) {
//            HomeView(selectedTab: $selectedTab)
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//                .tag(0)
//
//            BrowseView(selectedTab: $selectedTab)
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("Browse")
//                }
//                .tag(1)
//
//            ProfileView(selectedTab: $selectedTab)
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("profile")
//                }
//                .tag(2)
//
//            SettingView(selectedTab: $selectedTab)
//                .tabItem {
//                    Image(systemName: "gear")
//                    Text("Setting")
//                }
//                .tag(3)
//
//        }
//        .tabViewStyle(DefaultTabViewStyle())
        
        TabView(selection: $selectedTab) {
            HomeView(selectedTab: $selectedTab)
                .tag(0)
            BrowseView(selectedTab: $selectedTab)
                .tag(1)
            ProfileView(selectedTab: $selectedTab)
                .tag(2)
            SettingView(selectedTab: $selectedTab)
                .tag(3)
        }
        .frame(height: 300)
        .cornerRadius(40)
        .tabViewStyle(.page)
    }
}

struct HomeView: View {
    
    @Binding var selectedTab: Int
    @State var backgroundColor: Color = .pink
    
    var body: some View {
        ZStack {
            Color.secondary
                .ignoresSafeArea(edges: .bottom)
            backgroundColor
                .ignoresSafeArea(edges: .top)

            VStack {
                Text("Home Tab")
                TabChangerButton(selectedTab: $selectedTab, color: $backgroundColor)

            }
        }
    }
}

struct BrowseView: View {
    
    @Binding var selectedTab: Int
    @State var color: Color = .mint
    
    var body: some View {
        ZStack {
            Color.secondary
                .ignoresSafeArea(edges: .bottom)
            color
                .ignoresSafeArea(edges: .top)

            VStack {
                Text("Browse Tab")
                TabChangerButton(selectedTab: $selectedTab, color: $color)
            }
        }
    }
}

struct ProfileView: View {
    
    @Binding var selectedTab: Int
    @State var color: Color = .cyan
    
    var body: some View {
        ZStack {
            Color.secondary
                .ignoresSafeArea(edges: .bottom)
            color
                .ignoresSafeArea(edges: .top)

            VStack {
                Text("Profile Tab")
                TabChangerButton(selectedTab: $selectedTab, color: $color)
            }
        }
    }
}

struct SettingView: View {
    
    @Binding var selectedTab: Int
    @State var color: Color = .indigo
    
    var body: some View {
        ZStack {
            Color.secondary
                .ignoresSafeArea(edges: .bottom)
            color
                .ignoresSafeArea(edges: .top)

            VStack {
                Text("Setting Tab")
                TabChangerButton(selectedTab: $selectedTab, color: $color)
            }
        }
    }
}

struct TabChangerButton: View {
    
    @Binding var selectedTab: Int
    @Binding var color: Color
    
    var body: some View {
        Button {
            withAnimation(.spring()) {
                next()
            }
            
        } label: {
            Text("Next Tab")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .background(
                    color
                        .cornerRadius(10)
                        .shadow(radius: 10)
                )
        }
    }
    
    func next(){
        if selectedTab < 3 {
            selectedTab += 1
        } else {
            selectedTab = 0
        }
    }
}

struct TabViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBootcamp()
    }
}
