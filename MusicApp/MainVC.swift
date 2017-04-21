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
        
        let url1 = "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/KQ6zr6kCPj8\" frameborder=\"0\" allowfullscreen></iframe>"
        
        let url2 = "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/3BpdKCzHbq8\" frameborder=\"0\" allowfullscreen></iframe>"
        
        let url3 = "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/CdLhdrNgGu4\" frameborder=\"0\" allowfullscreen></iframe>"
        
        let url4 = "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/tWyuglGCKgE\" frameborder=\"0\" allowfullscreen></iframe>"
        
        let url5 = "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/SkTt9k4Y-a8\" frameborder=\"0\" allowfullscreen></iframe>"
        
        let p1 = PartyRock(imageURL: "https://img.youtube.com/vi/SkTt9k4Y-a8/hqdefault.jpg", videoURL: url1, videoTitle: "Party Rock Anthem")
        let p2 = PartyRock(imageURL: "https://img.youtube.com/vi/3BpdKCzHbq8/hqdefault.jpg", videoURL: url2, videoTitle: "Light's Out")
        let p3 = PartyRock(imageURL: "https://i.ytimg.com/vi/2wUxw6GH3IM/hqdefault.jpg", videoURL: url3, videoTitle: "Let's Get Ridiculous")
        let p4 = PartyRock(imageURL: "https://img.youtube.com/vi/tWyuglGCKgE/hqdefault.jpg", videoURL: url4, videoTitle: "Juicy Wiggle")
        let p5 = PartyRock(imageURL: "https://img.youtube.com/vi/vwO5Di22QIg/hqdefault.jpg", videoURL: url5, videoTitle: "Sorry For Party Rocking")
        
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let partyRock = partyRocks[indexPath.row]
        
        performSegue(withIdentifier: "VideoVC", sender: partyRock)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VideoVC {
            if let party = sender as? PartyRock {
                destination.partyRock = party
            }
        }
    }

}

