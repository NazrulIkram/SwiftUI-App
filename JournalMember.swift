//
//  TeamMember.swift
//  Daya
//
//  Created by STDC_39 on 07/08/2024.
//

import UIKit

struct JournalMember {
    let photo: UIImage?
    let post: UIImage?
    let name: String
    let aboutMe: String
    let description: String
    
}

extension JournalMember {
    static func sampleJournalMember() -> [JournalMember] {
        let photo1 = UIImage(named: "dad")
        let photo2 = UIImage(named: "mom")
        let photo3 = UIImage(named: "adik")
        let photo4 = UIImage(named: "abang")

        let post1 = UIImage(named: "fishing")
        let post2 = UIImage(named: "forest")
        let post3 = UIImage(named: "cafe")
        let post4 = UIImage(named: "bedroom")
        let post5 = UIImage(named: "flower")
        let teamMember1 = JournalMember(photo: photo1, post: post1, name: "Ayah", aboutMe: "10 March 2024", description: "Semoga tak kumpau!!")
        let teamMember2 = JournalMember(photo: photo2, post: post2, name: "Ibu", aboutMe: "10 March 2024", description: "Jom pergi sini nanti sama sama!")
        let teamMember3 = JournalMember(photo: photo3, post: post3, name: "Abang", aboutMe: "13 March 2024", description: "Murah dan sedapp!")
        let teamMember4 = JournalMember(photo: photo4, post: post4, name: "Adik", aboutMe: "14 March 2024", description: "Hm nak buat apa ek ni")
        let teamMember5 = JournalMember(photo: photo3, post: post5, name: "Abang", aboutMe:"12 August 2024", description: "I love flower!")
       
        return [teamMember1, teamMember2, teamMember3, teamMember4, teamMember5]

    }
}
