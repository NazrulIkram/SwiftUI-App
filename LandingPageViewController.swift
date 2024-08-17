//
//  LandingPageViewController.swift
//  EasyFam
//
//  Created by STDC_26 on 07/08/2024.
//
/*
// MARK: - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    // Get the new view controller using segue.destination.
    // Pass the selected object to the new view controller.
}
*/
//
//  LandingPageViewController.swift
//  EasyFam
//
//  Created by STDC_26 on 07/08/2024.
//

import UIKit

class LandingPageViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    @IBOutlet var sliderImage: UICollectionView!
    @IBOutlet weak var Stack1: UIStackView!
    @IBOutlet weak var Stack2: UIStackView!
    @IBOutlet weak var Stack3: UIStackView!
    
    var images = [ UIImage(named: "Family1"),
                   UIImage(named: "Family2"),
                   UIImage(named: "Family3")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the collection view's data source and delegate
        sliderImage.dataSource = self
        sliderImage.delegate = self
        Stack1.clipToCircle(radius: 20)
        Stack2.clipToCircle(radius: 20)
        Stack3.clipToCircle(radius: 20)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - UICollectionViewDataSource Methods
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imageCell", for: indexPath) as! ImageCollectionViewCell
        cell.imageView.image = images[indexPath.row]
        return cell
    }
    
    // MARK: - UICollectionViewDelegate Methods
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        // Handle cell selection
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            // Handle cell selection
        }
}

extension UIStackView { //create circle
    func clipToCircle(radius: CGFloat) {
        self.layoutIfNeeded()
        self.layer.cornerRadius = radius
        self.clipsToBounds = true
    }
}


