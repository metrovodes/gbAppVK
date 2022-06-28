//
//  GroupsTableViewCell.swift
//  gbAppVK
//
//  Created by Артем Седов on 27.06.2022.
//

import UIKit

class GroupsTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var groupAvatar: UIImageView!
    @IBOutlet weak var groupName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
