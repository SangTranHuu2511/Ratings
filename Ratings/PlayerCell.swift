//
//  PlayerCell.swift
//  Ratings
//
//  Created by admin on 8/21/17.
//  Copyright © 2017 Sang Tran. All rights reserved.
//

import UIKit

class PlayerCell: UITableViewCell {
    
    
    // MARK  @IBOutlets
    
    @IBOutlet weak var gameLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ratingImageView: UIImageView!
    
    var player: Player? {
        didSet {
            guard let player = player else { return  }
            
            gameLabel.text = player.name
            nameLabel.text = player.game
            
            ratingImageView.image = image(forRating: player.rating)
            
        }
    }
    
    func image(forRating: Int) -> UIImage? {
        let name = "\(forRating)Stars"
        return UIImage(named: name)
    
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }


}
