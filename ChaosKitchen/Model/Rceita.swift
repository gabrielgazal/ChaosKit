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
    internal init(nome: String, ingredientes: [String], quantidades: [Int], unidade: [String], imagem: UIImage?, passos: [String], dificuldade: Int, tempoPreparo: Int, rendimento: Int) {
        self.nome = nome
        self.ingredientes = ingredientes
        self.quantidades = quantidades
        self.unidade = unidade
        self.imagem = imagem
        self.passos = passos
        self.dificuldade = dificuldade
        self.tempoPreparo = tempoPreparo
        self.rendimento = rendimento
    }
    
    
    var nome: String
    var ingredientes: [String]
    var quantidades: [Int]
    var unidade: [String]
    var imagem: UIImage?
    var passos: [String]
    var dificuldade: Int
    var tempoPreparo: Int
    var rendimento: Int
    
    var favoritado: Bool = false
}
