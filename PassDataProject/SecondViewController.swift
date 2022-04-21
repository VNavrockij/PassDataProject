//
//  SecondViewController.swift
//  PassDataProject
//
//  Created by Vitalii Navrotskyi on 21.04.2022.
//

import UIKit

class SecondViewController: UIViewController {

    var login: String!
    @IBOutlet weak var label: UILabel!
    
    @IBAction func sendPressed(button: UIButton) {
        performSegue(withIdentifier: "unwindSegue", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let login = login else { return }
        label.text = "Hello, \(login)"
    }
    

}
