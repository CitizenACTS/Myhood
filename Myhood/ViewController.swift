//
//  ViewController.swift
//  Myhood
//
//  Created by Pierre De Pingon on 30/04/2016.
//  Copyright © 2016 Pierre De Pingon. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var posts = [Post]()
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        
        var post1 = Post(imagePath: "", title: "Ouai", description: "J'ai payé le premier cours sur firebase pour rien je viens de m'apercevoir qu'il y en aviat un autre trop bien ....")
        var post2 = Post(imagePath: "", title: "Ouai", description: "J'ai payé le premier cours sur firebase pour rien je viens de m'apercevoir qu'il y en aviat un autre trop bien ....")
        var post3 = Post(imagePath: "", title: "Ouai", description: "J'ai payé le premier cours sur firebase pour rien je viens de m'apercevoir qu'il y en aviat un autre trop bien ....")
        
        
        posts.append(post1)
        posts.append(post2)
        posts.append(post3)
        
        tableView.reloadData()
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let post = posts[indexPath.row]
        if let cell = tableView.dequeueReusableCellWithIdentifier("PostCell") as? PostCell {
            cell.configureCell(post)
            return cell
            
        
        
        } else {
            let cell = PostCell()
            cell.configureCell(post)
            return cell
        }
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 90
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    

}

