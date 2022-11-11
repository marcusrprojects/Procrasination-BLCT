//
//  Account Setup.swift
//  Procrasination-BLCT
//
//  Created by Marcus Ribeiro on 10/22/22.
//

import SwiftUI



struct Account_Setup: View {
    
    @State var mottoGoal = "enter motto goal..."
    @State var song1 = "enter song 1 link..."
    @State var song2 = "enter song 2 link..."
    @State var song1Name = "enter song 1 name..."
    @State var song2Name = "enter song 2 name..."
    @State var uploadedPic = false;
    
    @State var mottoGoalBlank = false;
    
    @State var next = false;
    
    var body: some View {
        
        VStack{
            Text("Account Setup").font(.largeTitle).bold()
                .padding()
            
            Text("Motto Goal").font(.title)
            
            TextField("", text: $mottoGoal).textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Group{
                Text("Motto Goal Picture").font(.title)
                
                Text("Upload motto goal picture here").padding(0.3)
                
                Button(action: {
                    uploadedPic = true;
                }, label: {
                    Image(systemName: "photo.on.rectangle.angled")
                }).opacity(uploadedPic ? 0 : 1).padding(1)
                
                if uploadedPic {
                    Image("mottogoalpic").resizable()
//                        .aspectRatio(contentMode: .fit)
                        .frame(width:250, height:187.5)
                        .padding()
                }
            }
            
            Group {
                HStack{
                    Image(systemName: "music.note")
                    Text("Add Song Url").font(.title)
                }
                
                Text("Paste motto goal song URL here...").padding(.horizontal)
                Text("Choose up to 2 songs (daily/weekly).").padding([.leading, .bottom, .trailing])
                Group{
                    Text("Song 1")
                    TextField("", text: $song1Name).textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal)
                    TextField("", text: $song1).textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal)
                }
                Group{
                    Text("Song 2")
                    TextField("", text: $song2Name).textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal)
                    TextField("", text: $song2).textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal)
                }
            }

            Button(action: {
                next = true;
            }, label: {
                Text("Next")
            }).opacity(uploadedPic ? 0 : 1).padding(1)
            
            if (next == true) {
                Account_Setup_2()
            }
        }
        
        
    }
}

struct Account_Setup_Previews: PreviewProvider {
    static var previews: some View {
        Account_Setup()
    }
}
