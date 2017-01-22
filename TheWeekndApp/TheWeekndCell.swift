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
        //TODO: set image from url
        
        let url = URL(string: weeknd.imageURL)!
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.videoPreviewImage.image = UIImage (data: data)
                }
            } catch  {
                // handle error
            }
        }
    }

}
