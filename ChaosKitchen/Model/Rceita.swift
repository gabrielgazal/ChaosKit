//
//  Rceita.swift
//  ChaosKitchen
//
//  Created by Gabriel Gazal on 23/06/19.
//  Copyright © 2019 Gabriel Gazal. All rights reserved.
//

import Foundation
import UIKit

class ReceitaClass{
    
    internal init(nome: String, ingredientes: [String], imagem: UIImage) {
        self.nome = nome
        self.ingredientes = ingredientes
        self.imagem = imagem
    }
    
    var nome: String
    var ingredientes: [String]
    var imagem: UIImage?
    var favoritado: Bool = false
}
