//
//  ViewController.swift
//  AretVC
//
//  Created by Алексей Гуляев on 23.06.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func ButtonPressed(_ sender: Any) {
        let alertController = UIAlertController(title: "Error", message: "Oh Main Goth!", preferredStyle: .alert)
        let actionButton = UIAlertAction(title: "Ok", style: .default) { (action) in
            let text = alertController.textFields?.first?.text
            print(text ?? "nil text")
        }
        alertController.addTextField(configurationHandler: nil)
        alertController.addAction(actionButton)
        self.present(alertController, animated: true, completion: nil)
    }
}

