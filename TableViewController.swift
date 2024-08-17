//
//  TableViewController.swift
//  TryTableView
//
//  Created by STDC_37 on 08/08/2024.
//

import UIKit

class TableViewController: UITableViewController {
    
    var data: [String] = ["kemas rumah","masak dinner","buang sampah"]
    
    @IBOutlet weak var textFieldOutlet: UITextField!
    @IBOutlet var tableViewOutlet: UITableView!
    

    @IBAction func addItemButton(_ sender: UIBarButtonItem) {
        if textFieldOutlet.hasText{
            data.append(textFieldOutlet.text!)
            tableViewOutlet.reloadData()
        }
        textFieldOutlet.text = ""
    }
    
    @IBAction func alphabetical(_ sender: Any) {
        data.sort()
        tableViewOutlet.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.leftBarButtonItem = self.editButtonItem
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            data.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            
        }
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let itToMove = data[sourceIndexPath.row]
        data.remove(at: sourceIndexPath.row)
        data.insert(itToMove, at: destinationIndexPath.row)
    }
    

}
