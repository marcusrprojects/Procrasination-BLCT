//
//  WelcomePage.swift
//  Procrasination-BLCT
//
//  Created by Marcus Ribeiro on 10/21/22.
//

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        VStack {
            Text("Welcome").font(.largeTitle).bold()
                .padding()
            
            Image("rubicon").resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:200)
            
            Text("Username")
            
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

//struct WelcomePage_Previews: PreviewProvider {
//    static var previews: some View {
//        WelcomePage()
//    }
//}
