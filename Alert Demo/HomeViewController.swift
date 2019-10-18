//
//  HomeViewController.swift
//  Alert Demo
//
//  Created by Aung Bo Bo on 16/10/2019.
//  Copyright © 2019 Aung Bo Bo. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    @IBAction func defaultALert() {
        let alert = UIAlertController(title: "Alert Title", message: "Alert Message", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
