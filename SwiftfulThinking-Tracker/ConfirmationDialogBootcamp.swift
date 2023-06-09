//
//  ActionSheetBootcamp.swift
//  SwiftfulThinking-Tracker
//
//  Created by Mehmet Kubilay Akdemir on 9.06.2023.
//

import SwiftUI

struct ConfirmationDialogBootcamp: View {
    
    @State var showConfirmationDialog: Bool = false
    @State var confirmationDialogType: ConfirmationDialogType = .one
    
    
    enum ConfirmationDialogType {
        case one
        case two
    }
    
    var body: some View {
        
        VStack {
            Button("Click for type one") {
                confirmationDialogType = .one
                showConfirmationDialog.toggle()
            }
            
            Button ("Click for type two") {
                confirmationDialogType = .two
                showConfirmationDialog.toggle()
            }
            
        }
        //MARK: - Confirmation Dialog with no message
        //        .confirmationDialog("New version of actionsheet", isPresented: $showConfirmationDialog) {
        //
        //            Button("First") {
        //
        //            }
        //            Button("Second") {
        //
        //            }
        //            Button("Third") {
        //
        //            }
        //        }
        //MARK: - Confirmation Dialog with  message, visible title
        
        .confirmationDialog(
            confirmationDialogType == .one ? "Type 1 Title" : "Type 2 Title", isPresented: $showConfirmationDialog,
            titleVisibility: .visible) {
                if confirmationDialogType == .one {
                    Button("Type 1 First Button", role: .destructive) {
                        
                    }
                    Button("Type 1 Secon Button") {
                        
                    }
                } else {
                    Button("Type 2 First Button", role: .destructive) {
                        
                    }
                    Button("Type 2 Second Button") {
                        
                    }
                    
                    Button("Type 2 Third Button") {
                        
                    }
                }
                
            }
    message: {
        Text(confirmationDialogType == .one ? "Type 1 Message" : "Type 2 Message")
    }
        
    }
}

struct ConfirmationDialogBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmationDialogBootcamp()
    }
}
