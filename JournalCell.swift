//
//  JournalCell.swift
//  Fily
//
//  Created by STDC_42 on 08/08/2024.
//

import UIKit

class JournalCell: UITableViewCell {
    
    @IBOutlet var photoImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var aboutMeLabel: UILabel!
    @IBOutlet var journalPost: UIImageView!
    @IBOutlet var journalDesc: UILabel!

    var selectedTeamMember: JournalMember?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupImageView()
    }
    
    private func setupImageView() {
           // Ensure the UIImageView is circular
           photoImageView.layer.cornerRadius = photoImageView.frame.size.width / 2
           photoImageView.clipsToBounds = true
           photoImageView.layer.borderWidth = 1.5
           //photoImageView.layer.borderColor = UIColor.systemPink.cgColor
        journalPost.layer.borderWidth = 1.5
        //journalPost.layer.borderColor = UIColor.systemPink.cgColor
       }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
