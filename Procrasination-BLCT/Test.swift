//
//  Test.swift
//  Procrasination-BLCT
//
//  Created by Marcus Ribeiro on 11/8/22.
//

import SwiftUI

struct Test: View {
    var body: some View {
        HStack {
            Button(action: {
                
            }) {
                Label("",systemImage:"plus.circle")
            }
            Button(action: {
                
            }) {
                Image("minus.circle")
            }
            Button(action: {
                
            }) {
                Label("Edit", systemImage: "pencil.circle")
            }
            .frame(width: 300, height: 300, alignment: .center)
            
        }
    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}
