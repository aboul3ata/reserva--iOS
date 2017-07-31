//
//  MainVC.swift
//  reserva
//
//  Created by Ali Abouelatta on 6/2/17.
//  Copyright © 2017 Ali Abouelatta. All rights reserved.
//

import UIKit
import Firebase
import FBSDKLoginKit
//import SwiftKeychainWrapper


class MainVC: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    
//MARK: LOGIN WITH FACEBOOOK!!
// checking everything is ok with fb
    @IBAction func loginFBtapped(_ sender: Any) {
        let facebookLogin = FBSDKLoginManager()
        
        facebookLogin.logIn(withReadPermissions: ["email"], from: self) { (result, error) in
            if error != nil {
                print("ALI: [MainVC] Unable to authenticate with Facebook - \(error)")
            } else if result?.isCancelled == true {
                print("ALI: [MainVC]  User cancelled Facebook authentication")
            } else {
                print("ALI: [MainVC]  Successfully authenticated with Facebook")
                                self.performSegue(withIdentifier: "goToWelcome", sender: nil)
                let credential = FacebookAuthProvider.credential(withAccessToken: FBSDKAccessToken.current().tokenString)


                self.firebaseAuth(credential)
            }
        }
    }
    
    
// checking everything is ok with firbase
    func firebaseAuth(_ credential: AuthCredential) {
        Auth.auth().signIn(with: credential, completion: { (user, error) in
            if error != nil {
                print("ALI: [MainVC]  Unable to authenticate with Firebase - \(error)")
            } else {
                print("ALI: [MainVC]  Successfully authenticated with Firebase")
                if let user = user {
                    let userData = ["provider": credential.provider]
                    // self.completeSignIn(id: user.uid, userData: userData)

                }
            }
        })
    }
    

}
