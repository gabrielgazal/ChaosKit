//
//  Model.swift
//  ChaosKitchen
//
//  Created by Gabriel Gazal on 23/06/19.
//  Copyright © 2019 Gabriel Gazal. All rights reserved.
//

import Foundation
import UIKit

class Model {
    static var shared = Model()
    private init() {
    }
    
    var receitaFav: [ReceitaClass] = []
    var ingredientesSelecionados: [IngredienteClass]  = []
    var receitas: [ReceitaClass] = [
        ReceitaClass(nome: "bolo", ingredientes: ["bb","cc"], imagem: UIImage(named: "bolo")! ),
        ReceitaClass(nome: "torta", ingredientes: ["ff","gg"], imagem: UIImage(named: "torta")!)
    ]
    var ingredientesTotais: [IngredienteClass] = [
        IngredienteClass(nome: "salt", icone: UIImage(named: "salt")!),
        IngredienteClass(nome: "milk", icone: UIImage(named: "milk")!),
        IngredienteClass(nome: "sugar", icone: UIImage(named: "sugar")!),
        IngredienteClass(nome: "eggs", icone: UIImage(named: "egg")!),
        IngredienteClass(nome: "oil", icone: UIImage(named: "oil")!),
        IngredienteClass(nome: "butter", icone: UIImage(named: "butter")!),
        IngredienteClass(nome: "flour", icone: UIImage(named: "flour")!),
        IngredienteClass(nome: "soda", icone: UIImage(named: "soda")!),
        IngredienteClass(nome: "vinegar", icone: UIImage(named: "vinegar")!)
    
    ]
    
    func adicionarFavorito(receita: ReceitaClass){
        receitaFav.append(receita)
    }
    func removerFavorito(receita: ReceitaClass){
        receitaFav = receitaFav.filter() { $0 !== receita}
    }
    
    func selecionouIng(ingrediente: IngredienteClass){
        ingredientesSelecionados.append(ingrediente)

    }
    func deselecionouIng(ingrediente: IngredienteClass){
        ingredientesSelecionados = ingredientesSelecionados.filter() { $0 !== ingrediente}
    }
}
