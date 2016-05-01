//
//  DataService.swift
//  Myhood
//
//  Created by Pierre De Pingon on 30/04/2016.
//  Copyright © 2016 Pierre De Pingon. All rights reserved.
//

import Foundation
import UIKit

class DataService {
    static let instance = DataService()
    
    private var _loadedPosts = [Post]()
    let KEY_POSTS = "posts"
    
    var loadedPosts : [Post] {
        return _loadedPosts
    }
    
    func savePosts() {
        let postsData = NSKeyedArchiver.archivedDataWithRootObject(_loadedPosts)
        NSUserDefaults.standardUserDefaults().setObject(postsData, forKey: KEY_POSTS)
    }
    
    func loadPosts() {
        if let postData = NSUserDefaults.standardUserDefaults().objectForKey(KEY_POSTS) as? NSData {
            if let postArray = NSKeyedUnarchiver.unarchiveObjectWithData(postData) as? [Post] {
                _loadedPosts = postArray
                
            }
        }
        
        NSNotificationCenter.defaultCenter().postNotification(NSNotification(name: "postLoaded", object: nil))
    }
    
    func saveImageAndCreatePath(image: UIImage) {
        
    }
    
    func imageForPath(path: String) {
        
    }
    
    func addPost(post: Post) {
        _loadedPosts.append(post)
        savePosts()
        loadPosts()
    }
    // TEST 
}