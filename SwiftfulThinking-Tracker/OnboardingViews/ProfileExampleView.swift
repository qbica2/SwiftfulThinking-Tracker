//
//  ProfileView.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 12.06.2023.
//

import SwiftUI

struct ProfileExampleView: View {
    
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false

    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            
            Text(currentUserName ?? "Your name")
            Text("Your age is \(currentUserAge ?? 0)")
            Text("Gender: \(currentUserGender ?? "unkown")")
            
            Text("SIGN OUT")
                .foregroundColor(.white)
                .font(.headline)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.black)
                .cornerRadius(10)
                .onTapGesture {
                    signOut()
                }
        }
        .font(.title)
        .foregroundColor(.pink)
        .padding()
        .padding(.vertical, 30)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 10)
        
    }
    
    func signOut(){
        currentUserName = nil
        currentUserAge = nil
        currentUserGender = nil
        withAnimation(.spring()) {
            currentUserSignedIn = false
        }
    }
}

struct ProfileExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileExampleView()
    }
}
