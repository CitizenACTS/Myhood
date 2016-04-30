//
//  AddPostVC.swift
//  Myhood
//
//  Created by Pierre De Pingon on 30/04/2016.
//  Copyright © 2016 Pierre De Pingon. All rights reserved.
//

import UIKit

class AddPostVC: UIViewController {

    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var descField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
// Do any additional setup after loading the view.
    }

    @IBAction func addPicBtnPressed(sender: UIButton!) {
        
        
    }
    @IBAction func savePostBtnPressed(sender: AnyObject) {
    }
    @IBOutlet weak var cancelBtnPressed: UIButton!

}
