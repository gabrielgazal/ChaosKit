//
//  DetalheViewController.swift
//  ChaosKitchen
//
//  Created by Gabriel Gazal on 24/06/19.
//  Copyright © 2019 Gabriel Gazal. All rights reserved.
//

import UIKit

class DetalheViewController: UIViewController {

    @IBOutlet weak var imagemReceita: UIImageView!
    @IBOutlet weak var nomeReceita: UILabel!
    @IBOutlet weak var dificuldad: UILabel!
    @IBOutlet weak var tempo: UILabel!
    @IBOutlet weak var ingredientes: UITextView!
    
    var receita: ReceitaClass!
    
    var receitaSelecionada = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        
        imagemReceita.image = receita.imagem
        nomeReceita.text = receita.nome
        dificuldad.text = receita.dificuldade
        tempo.text = "\(receita.tempoPreparo) minutos"
        ingredientes.text = ""
        
        for (indice,item) in receita.ingredientes.enumerated() {
            ingredientes.text += "- \(receita.quantidades[indice]) "
            if receita.unidade[indice] != "" {
                ingredientes.text += "\(receita.unidade[indice]) de "
            }
            ingredientes.text += "\(item) \n"
        }
        
        for (indice2, item2) in receita.passos.enumerated(){
            ingredientes.text  += "\n Passo \(indice2 + 1): \(receita.passos[indice2])"

        }
        imagemReceita.layer.cornerRadius = 15
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
