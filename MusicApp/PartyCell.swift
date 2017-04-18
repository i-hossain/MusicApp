//
//  PartyCell.swift
//  MusicApp
//
//  Created by Ismail Hossain on 2017-04-17.
//  Copyright © 2017 Ismail Hossain. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
        
        
    }
    
    func updateUI(partyRock: PartyRock) {
        
        videoTitle.text = partyRock.videoTitle
        //TODO: set image from url
        
    }

}
