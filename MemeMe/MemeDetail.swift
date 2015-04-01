//
//  MemeDetail.swift
//  MemeMe
//
//  Created by Brian Saunders on 3/29/15.
//  Copyright (c) 2015 Brian Saunders. All rights reserved.
//

import UIKit

class MemeDetail: UIViewController {

    var memedImage: UIImage?
    @IBOutlet weak var imageView: UIImageView!
    
    var memes: [Meme]!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.imageView.image = memedImage
    }

}
