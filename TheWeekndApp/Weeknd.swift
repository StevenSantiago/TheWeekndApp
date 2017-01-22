//
//  Weeknd.swift
//  TheWeekndApp
//
//  Created by Steven Santiago on 1/22/17.
//  Copyright © 2017 Steven Santiago. All rights reserved.
//

import Foundation

class Weeknd {
    private var _imageURL: String!
    private var _videoURL: String!
    private var _videoTitle: String!
    
    //getters
    
    var imageURL:String {
        return _imageURL
    }
    
    var videoURL: String {
        return _videoURL
    }
    
    var videoTitle: String {
        return _videoTitle
    }
    
    
    init(imageURL: String, videoURL:String, videoTitle: String ){
        
        _imageURL = imageURL
        _videoURL = videoURL
        _videoTitle = videoTitle
    }
}
