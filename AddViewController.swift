//
//  AddViewController.swift
//  Fily
//
//  Created by STDC_42 on 08/08/2024.
//

import UIKit

class AddViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    
    
    @IBOutlet var caption: UITextField!
    @IBOutlet weak var imageUpload: UIImageView!
    @IBAction func importImage(_ sender: AnyObject) {
        
        let image = UIImagePickerController()
        image.delegate = self
        
        image.sourceType = UIImagePickerController.SourceType.photoLibrary
        image.allowsEditing = false
        self.present(image, animated: true)
        {
            
        }
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            imageUpload.image = image
        }else{
            
        }
        self.dismiss(animated: true, completion: nil)
            
    }
    
    private func setupImageView() {
        imageUpload.layer.borderWidth = 1.5
        imageUpload.layer.borderColor = UIColor.systemPink.cgColor
       }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupImageView()
        // Do any additional setup after loading the view.
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
