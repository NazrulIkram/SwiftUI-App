//
//  SignInViewController.swift
//  EasyFam
//
//  Created by STDC_26 on 08/08/2024.
//

import UIKit

class SignInViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func signInButtonTapped(_ sender: AnyObject) {
        guard let myTabBar = self.storyboard?.instantiateViewController(withIdentifier: "myTabBar") as? UITabBarController else {
            return
        }
        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
           let delegate = windowScene.delegate as? SceneDelegate,
           let window = delegate.window {
            window.rootViewController = myTabBar
            window.makeKeyAndVisible()
        }
    }
}
