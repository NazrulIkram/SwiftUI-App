//
//  CircleViewController.swift
//  EasyFam
//
//  Created by STDC_26 on 10/08/2024.
//
/*
// MARK: - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    // Get the new view controller using segue.destination.
    // Pass the selected object to the new view controller.
}
*/
import UIKit

class CircleViewController: UIViewController {

    @IBOutlet var profile1: UIImageView!
    @IBOutlet var profile2: UIImageView!
    @IBOutlet var profile3: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profile1.profileCircle()
        profile2.profileCircle()
        profile3.profileCircle()
        
       
    }
}
extension UIImageView { //create circle
    func profileCircle() {
        self.layoutIfNeeded()
        self.layer.borderColor = UIColor.systemGray.cgColor
        self.layer.borderWidth = 5.0
        self.layer.cornerRadius = self.frame.height / 2
        self.clipsToBounds = true
    }
}
