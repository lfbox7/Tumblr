//
//  PhotosCell.swift
//  Tumblr
//
//  Created by Leonard Box on 10/19/19.
//  Copyright © 2019 Leonard Box. All rights reserved.
//

import UIKit

class PhotosCell: UITableViewCell {

    @IBOutlet weak var photoImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layoutMargins = UIEdgeInsets.zero
        self.preservesSuperviewLayoutMargins = false
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
