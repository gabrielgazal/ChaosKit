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
        textoHeader.font = UIFont(name: "Headliner No. 45", size: 75)
        textoHeader.textColor = UIColor(hue: 360.0, saturation: 0.0, brightness: 0.17, alpha: 1.0)
//        textoHeader.center = CGPoint(x: (vw.frame.size.width/2), y: (vw.frame.size.height/2))
        textoHeader.textAlignment = .center
        textoHeader.sizeToFit()
        textoHeader.adjustsFontSizeToFitWidth = true
//        textoHeader.baselineAdjustment = .alignBaselines
//        textoHeader.backgroundColor = .green
        
        viewAa.addSubview(textoHeader)
//        viewAa.backgroundColor = .red
        viewAa.frame.size.height = 80
        textoHeader.center.x = self.view.center.x
        textoHeader.center.y = viewAa.center.y
        
        return viewAa
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 75
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celula", for: indexPath) as! TableViewCell
        
        if Model.shared.receitasPossiveis.count == 0{
            cell.imagemReceita.isHidden = true
            cell.nomeReceita.text = "Nao ha receitas disponiveis"
            
        }else{
            let recept = Model.shared.receitasPossiveis[indexPath.row]
            cell.imagemReceita.image = recept.imagem
            cell.nomeReceita.text = recept.nome
            // Configure the cell...
        }
        cell.imagemReceita.layer.cornerRadius = 15
        cell.filtro.layer.cornerRadius = 15
        
        return cell
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
