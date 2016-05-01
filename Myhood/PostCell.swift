//
//  PostCell.swift
//  Myhood
//
//  Created by Pierre De Pingon on 30/04/2016.
//  Copyright © 2016 Pierre De Pingon. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {
    
    
    @IBOutlet weak var Bgview: UIView!
    @IBOutlet weak var postImg : UIImageView!
    @IBOutlet weak var postTitleLbl : UILabel!
    @IBOutlet weak var postDescLbl : UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        Bgview.layer.cornerRadius = 5.0
        postImg.layer.cornerRadius = postImg.frame.size.width / 2
        postImg.clipsToBounds = true
    }
    func configureCell(post: Post) {
        postTitleLbl.text = post.title
        postDescLbl.text = post.postdesc
        
    }
    

}
