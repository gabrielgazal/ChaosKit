//
//  NavigationViewController.swift
//  ChaosKitchen
//
//  Created by Gabriel Gazal on 28/06/19.
//  Copyright © 2019 Gabriel Gazal. All rights reserved.
//

import UIKit

class NavigationViewController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationBar.shadowImage = UIImage()
        self.navigationBar.isTranslucent = true
        self.view.backgroundColor = .clear
        
        // Do any additional setup after loading the view.
    }
}
