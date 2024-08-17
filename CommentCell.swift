//
//  CommentCell.swift
//  Fily
//
//  Created by STDC_42 on 08/08/2024.
//

import UIKit

class CommentCell: UITableViewCell {
    
    @IBOutlet var commentPhoto: UIImageView!
    @IBOutlet var name: UILabel!
    @IBOutlet var comment: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        setupImageView()

        // Do any additional setup after loading the view.
    }
    
    private func setupImageView() {
        commentPhoto.layer.cornerRadius = commentPhoto.frame.size.width / 2
        commentPhoto.clipsToBounds = true
        commentPhoto.layer.borderWidth = 1.5
        //commentPhoto.layer.borderColor = UIColor.systemPink.cgColor
        
    }

}
