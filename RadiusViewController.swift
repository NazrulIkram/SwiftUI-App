//
//  RadiusViewController.swift
//  EasyFam
//
//  Created by STDC_26 on 08/08/2024.
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

class RadiusViewController: UIViewController {

    @IBOutlet weak var Stack1: UIStackView!
    @IBOutlet weak var Stack2: UIStackView!
    @IBOutlet weak var Stack3: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        Stack1.clipToCircle(radius: 20)
        Stack2.clipToCircle(radius: 20)
        Stack3.clipToCircle(radius: 20)
    }
    

    

}
//extension UIStackView { //create circle
//    func clipToCircle(radius: CGFloat) {
//        self.layoutIfNeeded()
//        self.layer.cornerRadius = radius
//        self.clipsToBounds = true
//    }
//}
