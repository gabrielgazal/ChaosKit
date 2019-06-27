//
//  FavoritosCellTableViewCell.swift
//  ChaosKitchen
//
//  Created by Gabriel Gazal on 27/06/19.
//  Copyright © 2019 Gabriel Gazal. All rights reserved.
//

import UIKit

class FavoritosCellTableViewCell: UITableViewCell {
    @IBOutlet weak var sombreado: RoundedButton!
    @IBOutlet weak var fotoReceita: UIImageView!
    @IBOutlet weak var filtroFoto: UIView!
    @IBOutlet weak var nomedereceita: UILabel!
    @IBOutlet weak var dificul: UILabel!
    @IBOutlet weak var tempodeprep: UILabel!
    @IBOutlet weak var dificuldadelabel: UILabel!
    @IBOutlet weak var tempolabel: UILabel!
    @IBOutlet weak var zeroreceits: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
