//
//  TableViewCell.swift
//  ChaosKitchen
//
//  Created by Gabriel Gazal on 24/06/19.
//  Copyright © 2019 Gabriel Gazal. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var imagemReceita: UIImageView!
    @IBOutlet weak var nomeReceita: UILabel!
    @IBOutlet weak var filtro: UIView!
    @IBOutlet weak var dificuldadeLabel: UILabel!
    @IBOutlet weak var tempoLabel: UILabel!
    @IBOutlet weak var dificuldade: UILabel!
    @IBOutlet weak var tempodepreparo: UILabel!
    @IBOutlet weak var nenhumz: UILabel!
    @IBOutlet weak var sombrea: RoundedButton! 
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
