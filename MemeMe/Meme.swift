//
//  Meme.swift
//  MemeMe
//
//  Created by Brian Saunders on 3/28/15.
//  Copyright (c) 2015 Brian Saunders. All rights reserved.
//

import Foundation
import UIKit

class Meme {
    var topText = String()
    var bottomText = String()
    var originalImage = UIImage()
    var memedImage = UIImage()
    
    init() {
        
    }
    
    init(topText: String, bottomText: String, memedImage: UIImage) {
        self.topText = topText
        self.bottomText = bottomText
        self.memedImage = memedImage
    }
}