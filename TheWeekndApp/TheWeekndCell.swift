//
//  TheWeekndCell.swift
//  TheWeekndApp
//
//  Created by Steven Santiago on 1/22/17.
//  Copyright © 2017 Steven Santiago. All rights reserved.
//

import UIKit

class TheWeekndCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }


    func upDateUI(weeknd: Weeknd){
        videoTitle.text = weeknd.videoTitle
    
        let url = URL(string: weeknd.imageURL)! // turning string to URL
        DispatchQueue.global().async { // create thread in background
            do {
                let data = try Data(contentsOf: url) // attempt to grab data from URL if not it jumps to catch to handle error
                DispatchQueue.global().sync { // main thread to update UI
                    self.videoPreviewImage.image = UIImage (data: data)
                }
            } catch  {
                // handle error
            }
        }
    }

}
