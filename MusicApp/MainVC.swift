//
//  ViewController.swift
//  MusicApp
//
//  Created by Ismail Hossain on 2017-04-17.
//  Copyright © 2017 Ismail Hossain. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var partyRocks = [PartyRock]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlTest = "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/KQ6zr6kCPj8\" frameborder=\"0\" allowfullscreen></iframe>"
        
        let p1 = PartyRock(imageURL: "http://www.wavefm.com.au/images/stories/2015/04/redfoo.jpg", videoURL: urlTest, videoTitle: "Party Rock Anthem")
        let p2 = PartyRock(imageURL: "http://www.wavefm.com.au/images/stories/2015/04/redfoo.jpg", videoURL: urlTest, videoTitle: "Light's Out")
        let p3 = PartyRock(imageURL: "http://www.wavefm.com.au/images/stories/2015/04/redfoo.jpg", videoURL: urlTest, videoTitle: "Let's Get Ridiculous")
        let p4 = PartyRock(imageURL: "http://www.wavefm.com.au/images/stories/2015/04/redfoo.jpg", videoURL: urlTest, videoTitle: "Juicy Wiggle")
        let p5 = PartyRock(imageURL: "http://www.wavefm.com.au/images/stories/2015/04/redfoo.jpg", videoURL: urlTest, videoTitle: "Juicy Wiggle Lesson")
        
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        partyRocks.append(p5)
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            
            let partyRock = partyRocks[indexPath.row]
            cell.updateUI(partyRock: partyRock)
            
            return cell
            
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }

}

