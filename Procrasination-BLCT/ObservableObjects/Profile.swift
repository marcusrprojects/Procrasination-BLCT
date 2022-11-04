//
//  Profile.swift
//  Procrasination-BLCT
//
//  Created by Marcus Ribeiro on 10/21/22.
//

import Foundation
import SwiftUI

class Profile: ObservableObject{
    
    @Published var isLoggedIn = false
    @Published var song1 = "[song 1 link]";
    @Published var song2 = "[song 2 link]";
}
