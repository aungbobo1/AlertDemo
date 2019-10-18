//
//  CustomAlertViewController.swift
//  Alert Demo
//
//  Created by Aung Bo Bo on 16/10/2019.
//  Copyright © 2019 Aung Bo Bo. All rights reserved.
//

import UIKit

class CustomAlertViewController: UIViewController {
    
    @IBOutlet weak var alertImageView: UIImageView!
    @IBOutlet weak var alertTitleLabel: UILabel!
    @IBOutlet weak var alertMessageLabel: UILabel!
    @IBOutlet weak var alertButton: UIButton!
    
    var alertImage = UIImage()
    var alertTitle = String()
    var alertMessage = String()
    var alertButtonTitleLabel = String()
    var alertButtonTitleColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    var buttonAction: (() -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }
    
    func setUpView() {
        alertImageView.image = alertImage
        alertTitleLabel.text = alertTitle
        alertMessageLabel.text = alertMessage
        alertButton.setTitle(alertButtonTitleLabel, for: .normal)
        alertButton.setTitleColor(alertButtonTitleColor, for: .normal)
    }
    
    @IBAction func didTapActionButton() {
        dismiss(animated: true, completion: nil)
        buttonAction?()
    }
}
