//
//  MemeCollectionViewController.swift
//  MemeMe
//
//  Created by Brian Saunders on 3/29/15.
//  Copyright (c) 2015 Brian Saunders. All rights reserved.
//

import UIKit

class MemeCollectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var memes: [Meme]!
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        let object = UIApplication.sharedApplication().delegate
        let appDelegate = object as AppDelegate
        memes = appDelegate.memes
        
        self.collectionView.reloadData()
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return memes.count
    }

    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("memeCollectionCell", forIndexPath: indexPath) as MemeCell
        let meme = memes[indexPath.row]
        cell.imageView.image = meme.memedImage
        
        println("\(meme.topText)")
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        let cell = memes[indexPath.row]
        var controller: MemeDetail
        controller = self.storyboard?.instantiateViewControllerWithIdentifier("memeDetail") as MemeDetail
        controller.memedImage = cell.memedImage
        self.navigationController?.pushViewController(controller, animated: true)
    }
}
