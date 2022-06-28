//
//  Users.swift
//  gbAppVK
//
//  Created by Артем Седов on 26.06.2022.
//

import UIKit

class User {
    
    var name: String, avatar: UIImage?
    
    init(name: String, avatar: UIImage? = nil){
        self.name = name
        self.avatar = avatar
    }
}
