//
//  CustomAlert.swift
//  Alert Demo
//
//  Created by Aung Bo Bo on 16/10/2019.
//  Copyright © 2019 Aung Bo Bo. All rights reserved.
//

import Foundation
import UIKit

enum AlertType {
    case success
    case fail
}

class CustomAlert {
    
    static let shared = CustomAlert()
    
    func showAlert(vc: UIViewController, alertType: AlertType, completion: (() -> Void)?) {
        
        let storyboard = UIStoryboard(name: "CustomAlertStoryboard", bundle: .main)
        let alertVC = storyboard.instantiateViewController(withIdentifier: "CustomAlertVC") as! CustomAlertViewController
        
        switch alertType {
        case .success:
            alertVC.alertImage = UIImage(named: "Success")!
            alertVC.alertTitle = "Sweet!"
            alertVC.alertMessage = "Your order was placed successfully."
            alertVC.alertButtonTitleLabel = "Return home"
            alertVC.alertButtonTitleColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
            alertVC.buttonAction = completion
        case .fail:
            alertVC.alertImage = UIImage(named: "Failure")!
            alertVC.alertTitle = "Oh no!"
            alertVC.alertMessage = "Something went wrong. It's not you, it's me."
            alertVC.alertButtonTitleLabel = "Retry"
            alertVC.alertButtonTitleColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
            alertVC.buttonAction = completion
        }
        
        DispatchQueue.main.async { vc.present(alertVC, animated: true, completion: nil) }
    }
}
