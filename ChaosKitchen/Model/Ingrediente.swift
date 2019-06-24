//
//  Ingrediente.swift
//  ChaosKitchen
//
//  Created by Gabriel Gazal on 23/06/19.
//  Copyright © 2019 Gabriel Gazal. All rights reserved.
//

import Foundation
import UIKit

class IngredienteClass{
    internal init(nome: String, icone: UIImage) {
        self.nome = nome
        self.icone = icone
    }
    
    var nome: String
    var icone: UIImage?
    var selecao: Bool = false
}
