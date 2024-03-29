//
//  ReceitasTableViewController.swift
//  ChaosKitchen
//
//  Created by Gabriel Gazal on 24/06/19.
//  Copyright © 2019 Gabriel Gazal. All rights reserved.
//

import UIKit

class ReceitasTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.setValue(false, forKey: "hidesShadow")
        //        self.title = "Receitas Possíveis"
        //        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Headliner No. 45", size: 35)!]
        //        self.navigationController?.navigationBar.isHidden = false
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = false
        //        navigationController?.navigationBar.setValue(true, forKey: "hidesShadow")
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        var resultado = 0
        
        if Model.shared.receitasPossiveis.count == 0{
            resultado = 1
        }
        else{
            resultado =  Model.shared.receitasPossiveis.count
        }
        return resultado
    }
    
   
    
   
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {

        let viewAa = UIView()
        let textoHeader = UILabel(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 75))
        textoHeader.text = "RECEITAS POSSÍVEIS"
        textoHeader.font = UIFont(name: "Headliner No. 45", size: 50)
        textoHeader.textColor = UIColor(hue: 360.0, saturation: 0.0, brightness: 0.17, alpha: 1.0)
        textoHeader.textAlignment = .center
        textoHeader.sizeToFit()
        textoHeader.adjustsFontSizeToFitWidth = true

        viewAa.addSubview(textoHeader)
        viewAa.frame.size.height = 80
        textoHeader.center.x = self.view.center.x
        textoHeader.center.y = viewAa.center.y

        return viewAa
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
        
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celula", for: indexPath) as! TableViewCell
        
        if Model.shared.receitasPossiveis.count == 0{
            cell.imagemReceita.isHidden = true
            cell.nomeReceita.isHidden = true
            cell.dificuldadeLabel.isHidden = true
            cell.tempoLabel.isHidden = true
            cell.dificuldade.isHidden = true
            cell.tempodepreparo.isHidden = true
            cell.filtro.isHidden = true
            cell.sombrea.isHidden = true
            cell.nenhumz.isHidden = false
            
        }else{
            let recept = Model.shared.receitasPossiveis[indexPath.row]
            cell.imagemReceita.image = recept.imagem
            cell.nomeReceita.text = recept.nome
            cell.dificuldadeLabel.text = recept.dificuldade
            cell.tempoLabel.text = "\(recept.tempoPreparo) minutos"
            cell.nenhumz.isHidden = true

        }
        cell.imagemReceita.layer.cornerRadius = 15
        cell.filtro.layer.cornerRadius = 15
        
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "detalhe") as? DetalheViewController{
            if Model.shared.receitasPossiveis.count != 0{
                vc.receita = Model.shared.receitasPossiveis[indexPath.row]
                self.navigationController?.pushViewController(vc, animated: true)
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        // Get current state from data source
        let favorite = Model.shared.receitasPossiveis[indexPath.row].favoritado
        
        let title = ""
        
        let action = UIContextualAction(style: .normal, title: title,
                                        handler: { (action, view, completionHandler) in
                                            // Update data source when user taps action
                                            //
            Model.shared.receitasPossiveis[indexPath.row].favoritado.toggle()
            completionHandler(true)
            tableView.reloadData()
        })
        
        action.image = UIImage(named: favorite ? "fav" : "unfav")
        action.backgroundColor = UIColor(hue: 00, saturation: 0.0, brightness: 0.91, alpha: 0.0) //favorite ? .red : .green
        let configuration = UISwipeActionsConfiguration(actions: [action])
        return configuration
    }
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
