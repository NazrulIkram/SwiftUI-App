//
//  UploadDocViewController.swift
//  EasyFam
//
//  Created by STDC_42 on 09/08/2024.
//

import UIKit

class UploadDocViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate, UIDocumentPickerDelegate{
    
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
    
    @IBAction func importTapped() {
      //Create a picker specifying file type and mode
      let documentPicker = UIDocumentPickerViewController(documentTypes: [String()], in: .import)
       documentPicker.delegate = self
       documentPicker.allowsMultipleSelection = false
       documentPicker.modalPresentationStyle = .fullScreen
       present(documentPicker, animated: true, completion: nil)
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
