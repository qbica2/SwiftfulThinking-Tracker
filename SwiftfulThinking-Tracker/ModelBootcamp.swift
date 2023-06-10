//
//  ModelBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 11.06.2023.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let username: String
    let follewersCount: Int
    let isVerified: Bool
}

struct ModelBootcamp: View {
    
    @State var showAlert: Bool = false
    @State var nameText: String = ""
    @State var usernameText: String = ""
    @State var follewersCount: String = "30"
    @State var isVerified: Bool = false
    
    @State var users: [UserModel] = [
        UserModel(name: "John", username: "johnd", follewersCount: 44, isVerified: false),
        UserModel(name: "David", username: "mor_2314", follewersCount: 123, isVerified: true),
        UserModel(name: "Kevin", username: "kevinryan", follewersCount: 97, isVerified: true),
        UserModel(name: "Don", username: "donero", follewersCount: 312, isVerified: false)
    ]
    
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(users) { user in
                    HStack(spacing: 15){
                        Circle()
                            .frame(width: 35, height: 35)
                            .overlay {
                                Text(user.name.prefix(1))
                                    .font(.headline)
                                    .foregroundColor(.white)
                            }
                        
                        VStack (alignment: .leading) {
                            Text(user.name)
                            Text("@\(user.username)")
                        }
                        
                        Spacer()
                        
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        
                        VStack {
                            Text("\(user.follewersCount)")
                                .font(.headline)
                            Text("Followers")
                                .font(.caption)
                        }
                    }
                    .padding(.vertical, 10)
                }
            }
            
            
            .navigationTitle("Users")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "plus")
                        .onTapGesture {
                            showAlert.toggle()
                        }
                }
            }
        }
        .alert("Add New User", isPresented: $showAlert) {
            TextField("Enter a name", text: $nameText)
            TextField("Enter username", text: $usernameText)
            TextField("Followers Count", text: $follewersCount)
            
            Button("Add user") {
                addUser()
            }

        }
        
    }
    func addUser(){
        let newUser = UserModel(name: nameText, username: usernameText, follewersCount: Int(follewersCount) ?? 0, isVerified: true)
        
        users.append(newUser)
        nameText = ""
        usernameText = ""
        follewersCount = ""
    }
}

struct ModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ModelBootcamp()
    }
}
