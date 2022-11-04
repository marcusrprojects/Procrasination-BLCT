//
//  WelcomeViewController.swift
//  Procrasination-BLCT
//
//  Created by Marcus Ribeiro on 11/4/22.
//

import UIKit

class WelcomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        if Core.shared.isNewUser(){
            
            
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}

    class Core{
        
        static let shared = Core()
        
        func isNewUser() -> Bool {
            
            return !UserDefaults.standard.bool(forKey: "isNewUser")
        }
        
        func setIsNotNewUser(){
            
            UserDefaults.standard.set(true, forKey: "isNewUser")
        }
    }
