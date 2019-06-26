//
//  ViewController.swift
//  ChaosKitchen
//
//  Created by Gabriel Gazal on 23/06/19.
//  Copyright © 2019 Gabriel Gazal. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var spacing : CGFloat = 0.05 * UIScreen.main.bounds.width

    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    @IBOutlet weak var collectionVoew: UICollectionView!
    
    @IBAction func geraReceitas(_ sender: Any) {
        Model.shared.ProcuraReceita()
//        print(Model.shared.receitasPossiveis)
        for receita in Model.shared.receitasPossiveis {
            print(receita.nome)
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (collectionView.frame.width - 3 *  spacing) / 3
        return CGSize(width: width, height: width * 1.15)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return spacing/2
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return spacing/2
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Model.shared.ingredientesTotais.count
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "celulaIngrediente", for: indexPath) as! CollectionViewCell
        
        let ingrediente = Model.shared.ingredientesTotais[indexPath.row]
        cell.imageIngrediente.image = ingrediente.icone
        cell.NomeIngrediente.text = ingrediente.nome
        cell.clipsToBounds = true
        cell.layer.cornerRadius = 15
        cell.layer.borderWidth = 3
        cell.layer.shadowColor  = UIColor.lightGray.cgColor
        cell.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        cell.layer.shadowRadius = 5.0
        cell.layer.shadowOpacity = 0.5
        cell.layer.masksToBounds = false
        cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius: cell.contentView.layer.cornerRadius).cgPath
        if ingrediente.selecao == true {
            cell.layer.borderColor = UIColor.gray.cgColor
        } else{
        cell.layer.borderColor = UIColor.clear.cgColor
        }
        
        return cell
    }
    
    func  collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    
        if Model.shared.ingredientesTotais[indexPath.row].selecao == false{
            Model.shared.selecionouIng(ingrediente: Model.shared.ingredientesTotais[indexPath.row])
            Model.shared.ingredientesTotais[indexPath.row].selecao  = true
        } else{
            Model.shared.deselecionouIng(ingrediente: Model.shared.ingredientesTotais[indexPath.row])
            Model.shared.ingredientesTotais[indexPath.row].selecao = false
        }
        print("\(Model.shared.ingredientesSelecionados.count)")
        refreshCell()

        
    }

    

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionVoew.delegate  = self
        collectionVoew.dataSource  = self
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true

    }
    
     func refreshCell(){
        collectionVoew.reloadData()
    }
    
    


}

