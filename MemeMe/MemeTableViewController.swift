//
//  MemeTableViewController.swift
//  MemeMe
//
//  Created by Brian Saunders on 3/29/15.
//  Copyright (c) 2015 Brian Saunders. All rights reserved.
//

import UIKit

class MemeTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var memes: [Meme]!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        let object = UIApplication.sharedApplication().delegate
        let appDelegate = object as AppDelegate
        memes = appDelegate.memes
        
        }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memes.count
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let cell = memes[indexPath.row]
        var controller: MemeDetail
        controller = self.storyboard?.instantiateViewControllerWithIdentifier("memeDetail") as MemeDetail
        println("cell.memedImage: \(cell.memedImage)")
        controller.imageView?.image = cell.memedImage
        println("controller.imageView.image: \(controller.imageView?.image)")
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("meme") as UITableViewCell
        var cellMeme = memes[indexPath.row]
        cell.textLabel?.text = cellMeme.topText
        cell.detailTextLabel?.text = cellMeme.topText + cellMeme.bottomText
        cell.imageView?.image = cellMeme.memedImage
        
        return cell
    }
}
