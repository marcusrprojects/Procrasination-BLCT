//
//  AccountView.swift
//  Procrasination-BLCT
//
//  Created by Marcus Ribeiro on 10/21/22.
//

import SwiftUI

struct AccountView: View {
    
    @ObservedObject var profile = Profile()
    
    @ObservedObject var textValidator = TextValidator()
    
    @FocusState private var usernameFieldIsFocused: Bool
    @FocusState private var passwordFieldIsFocused: Bool
    
    @State var failed = false;
    
    @State var correctUser = "mrib";
    @State var correctPswd = "123";
    
    @State var username = "enter username...";
    @State var password = "enter password...";
    
    var body: some View {
        
        if (profile.isLoggedIn) {
            
            Account_Setup()
        }
        
        VStack {
            
            Group{
                Text("Welcome").font(.largeTitle).bold()
                    .padding()
            }
            
            Group{
                Image("rubicon").resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:200)
                    .padding()
                
                Text("Username: ").font(.title)
                
                TextField("", text: $username).focused($usernameFieldIsFocused).textInputAutocapitalization(.never)
                    .disableAutocorrection(true).textFieldStyle(RoundedBorderTextFieldStyle()).padding()
                
            }
            
            Image(systemName: "add")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            
            Text("Password: ").font(.title)
            
            TextField("", text: $password).focused($passwordFieldIsFocused).textInputAutocapitalization(.never)
                .disableAutocorrection(true).textFieldStyle(RoundedBorderTextFieldStyle()).padding()
            
            Group{
                Button(action: {
                    if correctUser == username.lowercased() && correctPswd == password { profile.isLoggedIn = true;
                        failed = false;
                    }
                    else {profile.isLoggedIn = false;
                        failed = true;
                    }
                }, label: {
                    Text("Log in").foregroundColor(username.count >= 3 && password.count >= 3 ? .blue : .gray)
                }).opacity(profile.isLoggedIn ? 0 : 1).padding()
                
                if (failed) {
                    
                    Text("Either the username or password you entered is incorrect. Please try again.").foregroundColor(.red)
                }
            }
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
