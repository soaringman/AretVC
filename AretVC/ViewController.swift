//
//  ViewController.swift
//  AretVC
//
//  Created by Алексей Гуляев on 23.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var hiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func ButtonPressed(_ sender: Any) {
        
        self.hiLabel.text = "Hi,"
        self.universalAlert(title: "Внимание", message: "Введите ваше имя", style: .alert)
        
        }
    
    //Make universal alert method
    func universalAlert (title: String, message: String, style: UIAlertController.Style) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        let actionButton = UIAlertAction(title: "Ok", style: .default) { (action) in
            let text = alertController.textFields?.first
            self.hiLabel.text? += (text?.text! ?? "") + ("!")
            
    }
        alertController.addTextField { textField in
            textField.textColor = .red
        }
        alertController.addAction(actionButton)
        self.present(alertController, animated: true, completion: nil)
    }
}

