//
//  ViewController.swift
//  gbAppVK
//
//  Created by Артем Седов on 15.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginButton(_ sender: Any) {
        guard loginField.text == "",
              passwordField.text == "" else{
            return
        }
        performSegue(withIdentifier: "tabBarCollection", sender: nil)
    }
}

