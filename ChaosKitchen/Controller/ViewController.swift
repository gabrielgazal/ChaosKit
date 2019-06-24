//
//  ViewController.swift
//  ChaosKitchen
//
//  Created by Gabriel Gazal on 23/06/19.
//  Copyright © 2019 Gabriel Gazal. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var spacing : CGFloat = 0.03 * UIScreen.main.bounds.width

    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    @IBOutlet weak var collectionVoew: UICollectionView!
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (collectionView.frame.width - spacing) / 3.5
        return CGSize(width: width, height: width * 1.3)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return spacing
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return spacing
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Model.shared.ingredientesTotais.count
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "celulaIngrediente", for: indexPath) as! CollectionViewCell
        
        let ingrediente = Model.shared.ingredientesTotais[indexPath.row]
        cell.imageIngrediente.image = ingrediente.icone
        cell.NomeIngrediente.text = ingrediente.nome
        
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

        
    }

    

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionVoew.delegate  = self
        collectionVoew.dataSource  = self
        // Do any additional setup after loading the view.
    }
    
    


}

