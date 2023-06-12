//
//  ListSwipeActionsBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 12.06.2023.
//

import SwiftUI



struct ListSwipeActionsBootcamp: View {
    
    @State var users: [UserModel] = [
        UserModel(name: "John", username: "johnd", follewersCount: 44, isVerified: false),
        UserModel(name: "David", username: "mor_2314", follewersCount: 123, isVerified: true),
        UserModel(name: "Kevin", username: "kevinryan", follewersCount: 97, isVerified: true),
        UserModel(name: "Don", username: "donero", follewersCount: 312, isVerified: false)
    ]
    
    var body: some View {
        List {
            ForEach(users) { user in
                HStack (spacing: 20) {
                    Circle()
                        .frame(width: 30)
                    VStack (alignment: .leading) {
                        Text(user.name)
                        Text(user.username)
                    }
                    Spacer()
                    
                    VStack {
                        Text("\(user.follewersCount)")
                            .font(.headline)
                        Text("Followers")
                            .font(.caption)
                    }
                }
                .swipeActions {
                    Button {
                        
                    } label: {
                        Image(systemName: "trash")
                        
                    }
                    .tint(.red)
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "bookmark.fill")
                    }
                    .tint(.green)
                    
                }
                
                .swipeActions(edge: .leading ,content: {
                    Button {
                        
                    } label: {
                        Text("Save")
                    }

                })
                
                .padding(6)
            }
        }
    }
            
}

struct ListSwipeActionsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeActionsBootcamp()
    }
}
