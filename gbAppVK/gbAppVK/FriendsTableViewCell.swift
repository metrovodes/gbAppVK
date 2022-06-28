//
//  FriendsTableViewCell.swift
//  gbAppVK
//
//  Created by Артем Седов on 26.06.2022.
//

import UIKit

class FriendsTableViewCell: UITableViewCell {

    @IBOutlet weak var friendName: UILabel!
    @IBOutlet weak var friendAvatar: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
