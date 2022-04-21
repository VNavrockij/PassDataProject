//
//  ViewController.swift
//  PassDataProject
//
//  Created by Vitalii Navrotskyi on 21.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var returnLabel: UILabel!
    
    @IBAction func sendPressed(sender: UIButton) {
        performSegue(withIdentifier: "detailSegue", sender: nil)
    }
    
    @IBAction func unwindToMainScreen(segue: UIStoryboardSegue) {
        guard segue.identifier == "unwindSegue" else { return }
        guard let sourceViewController = segue.source as? SecondViewController else { return }
        self.returnLabel.text = sourceViewController.label.text
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let destinationViewController = segue.destination as? SecondViewController else { return }
        destinationViewController.login = loginTF.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}

