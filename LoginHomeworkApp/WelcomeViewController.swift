//
//  WelcomeViewController.swift
//  LoginHomeworkApp
//
//  Created by Gregory Odintsov on 31.03.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    
    @IBOutlet var helloLabel: UILabel!
    
    var hiLabel: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        helloLabel.text = hiLabel

    }

    @IBAction func logOutAction() {
        dismiss(animated: true)
    }
    
    
}
