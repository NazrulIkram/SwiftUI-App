//
//  JournalListViewController.swift
//  Fily
//
//  Created by STDC_42 on 07/08/2024.
//

import UIKit

class JournalListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var tableView: UITableView!
    var tableData: [JournalMember] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableData = JournalMember.sampleJournalMember()

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tableData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let journalCell = tableView.dequeueReusableCell(withIdentifier: "journalPage", for: indexPath) as! JournalCell
                let journalMember = tableData[indexPath.row]
                journalCell.photoImageView.image = journalMember.photo
                journalCell.nameLabel.text = journalMember.name
                journalCell.aboutMeLabel.text = journalMember.aboutMe
                journalCell.journalPost.image = journalMember.post
                journalCell.journalDesc.text = journalMember.description
        
                return journalCell
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

