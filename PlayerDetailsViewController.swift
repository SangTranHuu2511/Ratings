//
//  PlayerDetailsViewController.swift
//  Ratings
//
//  Created by admin on 8/25/17.
//  Copyright © 2017 Sang Tran. All rights reserved.
//

import UIKit

class PlayerDetailsViewController: UITableViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var detailLabel: UILabel!
    var player: Player?
    var gameSelected: String = "" {
        didSet {
            detailLabel.text = gameSelected

        }
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    required init?(coder aDecoder: NSCoder) {
        print("Init PlayerDetail ViewController")
        super.init(coder: aDecoder)
        
    }
    
    deinit {
        print("Deinit Player Detail ViewController")
        
    }
    
}

extension PlayerDetailsViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            nameTextField.becomeFirstResponder()
            
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SavePlayer" {
            let namePlayer = nameTextField.text
            player = Player(name: namePlayer, game: gameSelected, rating: 3)
        }
        
    }
    
    @IBAction func passGame(segue: UIStoryboardSegue) {
        if let gamePickedVC = segue.source as? GamePickViewController, let gamePicked = gamePickedVC.selectedGame {
            gameSelected = gamePicked
            
        }
        
    }
}
