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
    
    var receitaFav: [ReceitaClass] {
        return receitas.filter({receita in receita.favoritado})
    }
    var ingredientesSelecionados: [IngredienteClass]  = []
    var receitasPossiveis: [ReceitaClass] = []
    var receitas: [ReceitaClass] = [
        ReceitaClass(nome: "Bolo de Chocolate", ingredientes: ["Ovos","Chocolate","Manteiga","Farinha","Açúcar","Fermento","Leite"], quantidades: ["4","4","2","3","2","2","1"], unidade: ["","colheres de sopa","colheres de sopa","xícaras","xícaras","colheres de sopa","xícara"], imagem: UIImage(named: "bolochocolate"), passos: ["Em um liquidificador adicione os ovos, o chocolate em pó, a manteiga, a farinha de trigo, o açúcar e o leite, depois bata por 5 minutos ","Adicione o fermento e misture com uma espátula delicadamente.","Em uma forma untada, despeje a massa e asse em forno médio (180 ºC) preaquecido por cerca de 40 minutos."], dificuldade: "Iniciante", tempoPreparo: 40, rendimento: 10),
        ReceitaClass(nome: "Macarrão ao Molho Branco", ingredientes: ["Macarrão","Oleo","Alho","Cebola","Queijo","Leite","Sal"], quantidades: ["1/2","2","2","1/2","1","1","1"], unidade: ["pacote","colheres de sopa","dentes","","xícara","caixa","pitada"], imagem: UIImage(named: "macarrao-1"), passos: ["Coloque a água para ferver (quantidade suficiente pra cobrir o macarrão) e coloque um pouco de sal, quando ela começar a ferver coloque o macarrão.","Enquanto o macarrão está fervendo em uma outra panela, adicione o óleo e a cebola, quando a cebola começar a fritar adicione o alho e deixe fritar mais um pouco, logo verá que o alho vai dourar.","Neste momento coloque o requeijão e deixe ele derreter bem, quando ele estiver bem derretido coloque a cebolinha, salsinha e o creme de leite e mexa bem, até ficar homogêneo.","Coloque sal, desligue o fogo e verifique se o macarrão está cozido.","Quando o macarrão estiver cozido, escorra ele bem e misture com o molho."], dificuldade: "Iniciante", tempoPreparo: 20, rendimento: 4),
        ReceitaClass(nome: "Arroz Doce", ingredientes: ["Leite","Arroz", "Açucar","Canela","Leite Condensado"], quantidades: ["1 e 1/2","2","3","","1"], unidade: ["litro","xícaras","xícaras","paus","lata"], imagem: UIImage(named: "arrozdoce"), passos: ["Cozinhe o arroz no leite, juntamente com a canela (utilize uma panela grande para que o leite ferva e não derrame).","Após 20 minutos, mexa de tempos em tempos.","Acrescente o açúcar e deixe por 20 minutos.","Logo em seguida, acrescente o leite condensado e deixe por mais 20 minutos.","Tranfira para uma travessa e aguarde resfriar."], dificuldade: "Intermediário", tempoPreparo: 60, rendimento: 20)
        
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
        IngredienteClass(nome: "Oleo", icone: UIImage(named: "oleo")!),
        IngredienteClass(nome: "Carne Moída", icone: UIImage(named: "carne")!),
        IngredienteClass(nome: "Agua", icone: UIImage(named: "agua")!)
    ]
    
    
//    func adicionarFavorito(receita: ReceitaClass){
//        receitaFav.append(receita)
//    }
//    func removerFavorito(receita: ReceitaClass){
//        receitaFav = receitaFav.filter() { $0 !== receita}
//    }
    
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
                    addREceita = true
                }
            }
            if addREceita{
                receitasPossiveis.append(receita)
            }
        }
        return receitasPossiveis
    }


}
