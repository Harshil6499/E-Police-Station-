//
//  ViewController.swift
//  E-Police Station
//
//  Created by Apple on 25/12/23.
//

import UIKit

class ViewController: UIViewController {
    
    

    @IBAction func RulesBtn(_ sender: Any) {
        let main = storyboard?.instantiateViewController(withIdentifier: "Rules_RegulationViewController") as! Rules_RegulationViewController
        self.navigationController?.pushViewController(main, animated: true)
    }
    
    @IBAction func VisitorBtn(_ sender: Any) {
        let main = storyboard?.instantiateViewController(withIdentifier: "MissingPersonsViewController") as! MissingPersonsViewController
        self.navigationController?.pushViewController(main, animated: true)
    }
    @IBAction func LogInBTN(_ sender: Any) {
        let main = storyboard?.instantiateViewController(withIdentifier: "LogInViewController") as! LogInViewController
        self.navigationController?.pushViewController(main, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

