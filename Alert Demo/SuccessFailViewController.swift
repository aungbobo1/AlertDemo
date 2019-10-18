//
//  SuccessFailViewController.swift
//  Alert Demo
//
//  Created by Aung Bo Bo on 16/10/2019.
//  Copyright © 2019 Aung Bo Bo. All rights reserved.
//

import UIKit

class SuccessFailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    @IBAction func didTapSuccesButton() {
        CustomAlert.shared.showAlert(vc: self, alertType: .success) {
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    @IBAction func didTapFailButton() {
        CustomAlert.shared.showAlert(vc: self, alertType: .fail, completion: nil)
    }
}

