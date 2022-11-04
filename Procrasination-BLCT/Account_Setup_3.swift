//
//  Account_Setup_3.swift
//  Procrasination-BLCT
//
//  Created by Marcus Ribeiro on 10/27/22.
//

import SwiftUI

struct Account_Setup_3: View {
    
    @State var goal1 = "enter goal 1..."
    @State var goal2 = "enter goal 2..."
    @State var goal3 = "enter goal 3..."
    @State var goal4 = "enter goal 4..."
    @State var goal5 = "enter goal 5..."
    @State var next = false;
    
    var body: some View {
        VStack{
            
            Text("Account Setup").font(.largeTitle).bold()
                .padding(.vertical, 1.0)
            Text("Semester Goals").font(.title)
            Text("Set daily 5-minute check.").padding()
            
            Group{
                
                TextField("", text: $goal1).textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                TextField("", text: $goal2).textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                TextField("", text: $goal3).textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                TextField("", text: $goal4).textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                TextField("", text: $goal5).textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)
                HStack{
                    Image(systemName: "plus.circle")
                    Image(systemName: "minus.circle").padding()
                }
            }
            
            Text("Weekly Planning").font(.title)
            HStack{
                //next button
                Button(action: {
                    next = true;
                }, label: {
                    Image(systemName:"checkmark.square")
                }).padding()
                Text("Set daily 5-minute check.").padding()
            }
            
            //next button
            Button(action: {
                next = true;
            }, label: {
                Text("Finish")
            }).padding()
            
            if (next == true) {
                Home()
            }
        }
    }
}

struct Account_Setup_3_Previews: PreviewProvider {
    static var previews: some View {
        Account_Setup_3()
    }
}
