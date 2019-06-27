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
    
    var receitaSelecionada = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        imagemReceita.image = Model.shared.receitasPossiveis[receitaSelecionada].imagem
        nomeReceita.text = Model.shared.receitasPossiveis[receitaSelecionada].nome
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
