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
    
    //    var ingSortidos: [IngredienteClass]!
    private init() {
        ingredientesTotais = ingredientesTotais.sorted(by: {$0.nome < $1.nome})
    }
    
    var receitaFav: [ReceitaClass] = []
    var ingredientesSelecionados: [IngredienteClass]  = []
    var receitasPossiveis: [ReceitaClass] = []
    var receitas: [ReceitaClass] = [
        ReceitaClass(nome: "Bolo de Cenoura", ingredientes: ["Oleo","Cenoura","Ovos","Açúcar","Farinha","Fermento"], quantidades: [0.5,3,4,2,2.5,1], unidade: ["xícara","","","xícaras","xícaras","colher de sopa"], imagem: UIImage(named: "bolo"), passos: ["misturar","assar","comer"], dificuldade: "Iniciante", tempoPreparo: 40, rendimento: 8)
//
//        ReceitaClass(nome: "bolo", ingredientes: ["Sal","Leite"], quantidades: [2.5,1], unidade: ["xicaras","colheres"], imagem: UIImage(named: "bolo"), passos: ["ddd","ddd"], dificuldade: "medio", tempoPreparo: 2, rendimento: 4)

    ]
    var ingredientesTotais: [IngredienteClass] = [
        IngredienteClass(nome: "Sal", icone: UIImage(named: "sal")!),
        IngredienteClass(nome: "Leite", icone: UIImage(named: "leite")!),
        IngredienteClass(nome: "Açúcar", icone: UIImage(named: "acucar")!),
        IngredienteClass(nome: "Ovos", icone: UIImage(named: "ovos")!),
        IngredienteClass(nome: "Azeite", icone: UIImage(named: "azeite")!),
        IngredienteClass(nome: "Manteiga", icone: UIImage(named: "manteiga")!),
        IngredienteClass(nome: "Farinha", icone: UIImage(named: "farinha")!),
        IngredienteClass(nome: "Fermento", icone: UIImage(named: "fermento")!),
        IngredienteClass(nome: "Vinagre", icone: UIImage(named: "vinagre")!),
        IngredienteClass(nome: "Pimenta-do-Reino", icone: UIImage(named: "pimentreino")!),
        IngredienteClass(nome: "Frutas", icone: UIImage(named: "frutas")!),
        IngredienteClass(nome: "Cenoura", icone: UIImage(named: "cenoura")!),
        IngredienteClass(nome: "Batata", icone: UIImage(named: "batata")!),
        IngredienteClass(nome: "Cebola", icone: UIImage(named: "cebola")!),
        IngredienteClass(nome: "Alho", icone: UIImage(named: "alho")!),
        IngredienteClass(nome: "Queijo", icone: UIImage(named: "queijo")!),
        IngredienteClass(nome: "Chocolate", icone: UIImage(named: "chocolate")!),
        IngredienteClass(nome: "Mostarda", icone: UIImage(named: "mostarda")!),
        IngredienteClass(nome: "Mel", icone: UIImage(named: "mel")!),
        IngredienteClass(nome: "Arroz", icone: UIImage(named: "arroz")!),
        IngredienteClass(nome: "Tomates", icone: UIImage(named: "tomate")!),
        IngredienteClass(nome: "Gengibre", icone: UIImage(named: "gengibre")!),
        IngredienteClass(nome: "Ketchup", icone: UIImage(named: "ketchup")!),
        IngredienteClass(nome: "Limão", icone: UIImage(named: "limao")!),
        IngredienteClass(nome: "Iogurte", icone: UIImage(named: "iogurte")!),
        IngredienteClass(nome: "Maionese", icone: UIImage(named: "mayonnaise")!),
        IngredienteClass(nome: "Feijão", icone: UIImage(named: "feijao")!),
        IngredienteClass(nome: "Pão", icone: UIImage(named: "pao")!),
        IngredienteClass(nome: "Bacon", icone: UIImage(named: "bacon")!),
        IngredienteClass(nome: "Pimentão", icone: UIImage(named: "pimentao")!),
        IngredienteClass(nome: "Cebolinha", icone: UIImage(named: "cebolinha")!),
        IngredienteClass(nome: "Shoyu", icone: UIImage(named: "shoyu")!),
        IngredienteClass(nome: "Leite Condensado", icone: UIImage(named: "leitecondensado")!),
        IngredienteClass(nome: "Canela", icone: UIImage(named: "canela")!),
        IngredienteClass(nome: "Creme de Leite", icone: UIImage(named: "cremedeleite")!),
        IngredienteClass(nome: "Macarrão", icone: UIImage(named: "macarrao")!),
        IngredienteClass(nome: "Oleo", icone: UIImage(named: "oleo")!)
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
    
    func ProcuraReceita() -> [ReceitaClass]{
        receitasPossiveis = []
        for receita in receitas{
            var temIngrediente: Bool
            var addREceita = true
            for  ingReceita in receita.ingredientes{
                temIngrediente = false
                for ingrediente in ingredientesSelecionados{
                    if ingrediente.nome == ingReceita{
                        temIngrediente = true
                    }
                }
                
                if !temIngrediente {
                    addREceita = false
                }
            }
            if addREceita{
                receitasPossiveis.append(receita)
            }
        }
        return receitasPossiveis
    }


}
