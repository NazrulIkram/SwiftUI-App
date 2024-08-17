//
//  ViewController.swift
//  Fily
//
//  Created by STDC_42 on 07/08/2024.
//

import UIKit

class JournalDetailViewController: UIViewController {
    
    @IBOutlet var image: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        image.clipToCircle()
        // Do any additional setup after loading the view.
    }


}

extension UIImageView{
    func clipToCircle(){
        self.layoutIfNeeded()
        self.layer.borderColor =
            UIColor.systemYellow.cgColor
        self.layer.borderWidth = 10.0
        self.layer.cornerRadius = self.frame.height / 2
        self.clipsToBounds = true
    }
}
