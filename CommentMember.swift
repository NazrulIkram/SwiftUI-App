//
//  CommentMember.swift
//  Fily
//
//  Created by STDC_42 on 08/08/2024.
//

import UIKit

struct CommentMember {
    let commentPhoto: UIImage?
    let name: String
    let userComment: String
    
}

extension CommentMember {
    static func sampleCommentMember() -> [CommentMember] {
        let photo1 = UIImage(named: "dad")
        let photo2 = UIImage(named: "mom")
        let photo3 = UIImage(named: "adik")
        let photo4 = UIImage(named: "kakak")
        let photo5 = UIImage(named: "flower")
        let comment1 = CommentMember(commentPhoto: photo1, name: "Ayah", userComment: "Semoga tak kumpau!!")
        let comment2 = CommentMember(commentPhoto: photo2, name: "Ibu", userComment: "Jom pergi sini nanti sama sama!")
        let comment3 = CommentMember(commentPhoto: photo3, name: "Kakak", userComment: "Murah dan sedapp!")
        let comment4 = CommentMember(commentPhoto: photo4, name: "Adik", userComment: "Hm nak buat apa ek ni")
        
        
        return [comment1, comment2, comment3, comment4]
        
    }
}
