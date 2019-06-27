//
//  FavoritosViewController.swift
//  ChaosKitchen
//
//  Created by Gabriel Gazal on 27/06/19.
//  Copyright © 2019 Gabriel Gazal. All rights reserved.
//

import UIKit

class FavoritosViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableVoiewFav: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return     Model.shared.receitaFav.count

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "celulafav", for: indexPath) as! FavoritosCellTableViewCell
        
        if Model.shared.receitaFav.count == 0{
            cell.fotoReceita.isHidden = true
            cell.nomedereceita.isHidden = true
            cell.dificuldadelabel.isHidden = true
            cell.tempolabel.isHidden = true
            cell.dificul.isHidden = true
            cell.tempodeprep.isHidden = true
            cell.filtroFoto.isHidden = true
            cell.sombreado.isHidden = true
            cell.zeroreceits.isHidden = false
            
        }else{
            let recept = Model.shared.receitaFav[indexPath.row]
            cell.fotoReceita.image = recept.imagem
            cell.nomedereceita.text = recept.nome
            cell.dificuldadelabel.text = recept.dificuldade
            cell.tempolabel.text = "\(recept.tempoPreparo) minutos"
            cell.zeroreceits.isHidden = true
            
        }
        cell.fotoReceita.layer.cornerRadius = 15
        cell.filtroFoto.layer.cornerRadius = 15
        
        
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableVoiewFav.delegate = self
        tableVoiewFav.dataSource = self
        tableVoiewFav.reloadData()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        tableVoiewFav.delegate = self
        tableVoiewFav.dataSource = self
        tableVoiewFav.reloadData()
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
