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
    
    var receitaSelecionada = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        
        let recpt = Model.shared.receitasPossiveis[receitaSelecionada]

        imagemReceita.image = recpt.imagem
        nomeReceita.text = recpt.nome
        dificuldad.text = recpt.dificuldade
        tempo.text = "\(recpt.tempoPreparo) minutos"
        ingredientes.text = ""
        
        for (indice,item) in recpt.ingredientes.enumerated() {
            ingredientes.text += "- \(recpt.quantidades[indice]) "
            if recpt.unidade[indice] != "" {
                ingredientes.text += "\(recpt.unidade[indice]) de "
            }
            ingredientes.text += "\(item) \n"
        }
        
        for (indice2, item2) in recpt.passos.enumerated(){
            ingredientes.text  += "\n Passo \(indice2 + 1): \(recpt.passos[indice2])"

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
