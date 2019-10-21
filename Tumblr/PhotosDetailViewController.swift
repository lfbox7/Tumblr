//
//  PhotosDetailViewController.swift
//  Tumblr
//
//  Created by Leonard Box on 10/19/19.
//  Copyright © 2019 Leonard Box. All rights reserved.
//

import UIKit
import AlamofireImage

class PhotosDetailViewController: UIViewController {
  
    @IBOutlet weak var postView: UIImageView!
    @IBOutlet weak var postScrollView: UIScrollView!
    @IBOutlet weak var postCaption: UILabel!
    
    var postsUrl: URL?
    var postsCaption: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        postScrollView.contentLayoutGuide.bottomAnchor.constraint(equalTo: postCaption.bottomAnchor).isActive = true
        
        let cleanCaption = postsCaption.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
        postCaption.text = cleanCaption
        
        if let postsUrl = postsUrl {
            postView.af_setImage(withURL: postsUrl)
        }
    }
}
