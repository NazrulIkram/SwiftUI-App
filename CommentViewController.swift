//
//  JournalListViewController.swift
//  Fily
//
//  Created by STDC_42 on 07/08/2024.
//

import UIKit

class CommentViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var commentField: UITextField!
    @IBOutlet var tableView: UITableView!
    @IBAction func addButton(_ sender: Any){
        
        
    }
    var commentData: [CommentMember] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        commentData = CommentMember.sampleCommentMember()

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        commentData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let commentCell = tableView.dequeueReusableCell(withIdentifier: "commentPage", for: indexPath) as! CommentCell
                let commentMember = commentData[indexPath.row]
                commentCell.commentPhoto.image = commentMember.commentPhoto
        commentCell.name.text = commentMember.name
        commentCell.comment.text = commentMember.userComment
        
                return commentCell
    }
    
    

}


