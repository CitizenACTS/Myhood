//
//  Post.swift
//  Myhood
//
//  Created by Pierre De Pingon on 30/04/2016.
//  Copyright © 2016 Pierre De Pingon. All rights reserved.
//

import Foundation

class Post: NSObject, NSCoding {
    
    private var _imagePath: String!
    private var _title: String!
    private var _postdesc: String!
    
    
    var imagePath: String {
        return _imagePath
    }
    
    var title: String {
        return _title
    }
    
    var postdesc: String {
        return _postdesc
    }
    
    
    init(imagePath: String, title: String, description: String) {
        self._imagePath = imagePath
        self._title = title
        self._postdesc = description
    }
    
    override init() {
        
    }
    required convenience init?(coder aDecoder: NSCoder) {
        self.init()
        self._imagePath = aDecoder.decodeObjectForKey("imagePath") as? String
        self._title = aDecoder.decodeObjectForKey("title") as? String
        self._postdesc = aDecoder.decodeObjectForKey("description") as? String
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(self._imagePath, forKey: "imagePath")
        aCoder.encodeObject(self._title, forKey: "title")
        aCoder.encodeObject(self._postdesc, forKey: "description")
        
    }
}