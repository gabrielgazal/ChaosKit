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
        ReceitaClass(nome: "Arroz Doce", ingredientes: ["Leite","Arroz", "Açucar","Canela","Leite Condensado"], quantidades: ["1 e 1/2","2","3","","1"], unidade: ["litro","xícaras","xícaras","paus","lata"], imagem: UIImage(named: "arrozdoce"), passos: ["Cozinhe o arroz no leite, juntamente com a canela (utilize uma panela grande para que o leite ferva e não derrame).","Após 20 minutos, mexa de tempos em tempos.","Acrescente o açúcar e deixe por 20 minutos.","Logo em seguida, acrescente o leite condensado e deixe por mais 20 minutos.","Tranfira para uma travessa e aguarde resfriar."], dificuldade: "Intermediário", tempoPreparo: 60, rendimento: 20),
        ReceitaClass(nome: "Gelo", ingredientes: ["Agua"], quantidades: ["Não Definida"], unidade: [""], imagem: UIImage(named: "gelo"), passos: ["Coloque a água na forma.","Coloque a forma no congelador","Aguarde a formação do gelo"], dificuldade: "Muito fácil", tempoPreparo: 120, rendimento: 20),
        ReceitaClass(nome: "Brigadeiro", ingredientes: ["Leite Condensado","Achocolatado","Manteiga"], quantidades: ["1","6","1"], unidade: ["lata","colheres de sopa","colher de sopa"], imagem: UIImage(named: "brigadeiro"), passos: ["Em uma panela funda, acrescente o leite condensado, a margarina e o chocolate em pó.","Cozinhe em fogo médio e mexa até que o brigadeiro comece a desgrudar da panela.","Deixe esfriar e sirva."], dificuldade: "Iniciante", tempoPreparo: 30, rendimento: 15),
        ReceitaClass(nome: "Brusqueta", ingredientes: ["Pão","Tomates","Queijo","Sal","Azeite","Alho","Pimenta-do-Reino"], quantidades: ["6","2","200","","1","1","1"], unidade: ["fatias","","gramas","","pitada","colher de chá","pitada"], imagem: UIImage(named: "brusqueta"), passos: ["Corte as fatias do pão e coloque em uma forma (reserve).","Corte os tomates em cubos e retire as sementes e o líquido interno.","Adicione uma pitada de sal, uma pitada de orégano e uma pitada de pimenta-do-reino aos tomates.","Coloque azeite e misture.","Coloque 1 dente de alho do recipiente apenas para dar o gosto nos ingredientes e deixe descansar por 10 minutos.","Retire o dente de alho com uma colher e dispense.","Coloque os ingredientes sobre as fatias de pão.","Jogue por cima de cada fatia o queijo.","Coloque a forma no forno pré-aquecido a 180 graus.","Retire a forma do forno e sirva."], dificuldade: "Iniciante", tempoPreparo: 20, rendimento: 6),
        ReceitaClass(nome: "Panquecas Americanas", ingredientes: ["Farinha","Açúcar","Fermento","Sal","Ovos","Leite","Oleo"], quantidades: ["1","2","2","1","1","1","2"], unidade: ["xícara","colheres de sopa","colheres de chá","pitada","","xícara","colheres de sopa"], imagem: UIImage(named: "panquecas"), passos: ["Em um refratário misture a farinha, o açúcar, o fermento e o sal","Faça um buraco no meio e coloque o leite, o ovo e o óleo. Mexa até ficar uma massa homogênea.","Aqueça uma frigideira e coloque bem pouco óleo. Faça cada panqueca com aproximadamente 1/4 de xícara de massa.","Deixe dourar em ambos os lados e sirva quente."], dificuldade: "Intermediário", tempoPreparo: 20, rendimento: 5),
        ReceitaClass(nome: "Omelete", ingredientes: ["Ovos","Sal","Manteiga","Azeite","Queijo","Tomates","Cebolinha","Pimentão","Cebola"], quantidades: ["3","1","1","1","2","1/2","1/4"], unidade: ["","pitada","colher de sopa","colher de sopa","fatias","",""], imagem: UIImage(named: "omelete"), passos: ["Adicione o azeite, a manteiga e a cebola em uma frigideira. Quando a manteiga derreter e a cebola estiver transparente, adicione os ovos e o sal.","Mexa com uma espátula.","Quando estiver começando a ficar pronto, adicione o resto dos ingredientes.","Sirva quente."], dificuldade: "Iniciante", tempoPreparo: 15, rendimento: 1),
        ReceitaClass(nome: "Pudim", ingredientes: ["Leite Condensado","Leite","Ovos","Açúcar","Agua"], quantidades: ["1","1","3","1","2"], unidade: ["lata","lata (medida de leite condensado)","","xícara","xícaras"], imagem: UIImage(named: "pudim"), passos: ["Primeiro, bata bem os ovos no liquidificador.","Acrescente o leite condensado e o leite, e bata novamente","Derreta o açúcar na panela até ficar moreno, acrescente a água e deixe engrossar.","Coloque em uma forma redonda e despeje a massa do pudim por cima.","Asse em forno médio por 45 minutos, com a assadeira redonda dentro de uma maior com água.","Espete um garfo para ver se está bem assado","Deixe esfriar e desenforme."], dificuldade: "Intermediário", tempoPreparo: 60, rendimento: 8),
        ReceitaClass(nome: "Estrogonofe", ingredientes: ["Peito de Frango","Creme de Leite", "Caldo de Galinha","Oleo","Sal"], quantidades: ["1","1","1","3","1"], unidade: ["kg","lata","tablete","colheres de sopa","pitada"], imagem: UIImage(named: "estrogonofe"), passos: ["Primeiro corte o frango em cubinhos.","Em uma panela média, coloque o óleo, o tablete de caldo de galinha e o sal a gosto, aqueça até o ponto de fritura e coloque o frango.","Mexa bem e tampe meia panela para que crie água, espere sumir a água e começar a fritura.","Coloque a lata de creme de leite e mexa até espalhar, com a mesma lata encha de água e coloque junto, mexa mais uma vez até misturar e deixe levantar fervura.","Sirva quente"], dificuldade: "Intermediário", tempoPreparo: 60, rendimento: 7),
        ReceitaClass(nome: "Mousse de limão", ingredientes: ["Leite Condensado","Creme de Leite","Limão"], quantidades: ["1","1","5"], unidade: ["lata","lata",""], imagem: UIImage(named: "mousselimao"), passos: ["Coloque no , o creme de leite (com soro mesmo) e o leite condensado.","Bata um pouco e depois vá acrescentando o suco do limão, aos poucos.","Ele vai ficar bem consistente, leve à geladeira."], dificuldade: "Iniciante", tempoPreparo: 20, rendimento: 10),
        ReceitaClass(nome: "Bolo de Caneca", ingredientes: ["Ovos","Leite","Oleo","Achocolatado","Açúcar","Farinha","Fermento"], quantidades: ["1","4","3","2","4","4","1"], unidade: ["","colheres de sopa","colheres de sopa","colheres de sopa","colheres de sopa","colheres de sopa","colher de café"], imagem: UIImage(named: "bolocaneca"), passos: ["Coloque o ovo na caneca e bata bem com um garfo.","Acrescente o óleo, o açúcar, o leite, o chocolate e bata mais.","Acrescente a farinha e o fermento e mexa delicadamente até incorpar.","Leve por 3 minutos no microondas na potência máxima."], dificuldade: "Iniciante", tempoPreparo: 10, rendimento: 1)
        
        
        

        
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
        IngredienteClass(nome: "Agua", icone: UIImage(named: "agua")!),
        IngredienteClass(nome: "Peito de Frango", icone:UIImage(named: "peitofrango")!),
        IngredienteClass(nome: "Achocolatado", icone: UIImage(named: "achocolatado")!),
        IngredienteClass(nome: "Caldo de Galinha", icone: UIImage(named: "tablete")!)
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
