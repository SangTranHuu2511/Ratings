//
//  PlayersViewController.swift
//  Ratings
//
//  Created by admin on 8/21/17.
//  Copyright © 2017 Sang Tran. All rights reserved.
//

import UIKit

class PlayersViewController: UITableViewController {
    
    //MARK: Properties
    var players =  SampleData.genneratorPlayerData()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension PlayersViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlayerCell", for: indexPath) as! PlayerCell
        
        let player = players[indexPath.row]
        cell.player = player
        
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row % 2 == 0 {
            return CGFloat(60)
        }
        
        return CGFloat(100)
        
    }

}
