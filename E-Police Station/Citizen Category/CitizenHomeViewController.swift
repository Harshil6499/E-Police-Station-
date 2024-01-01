//
//  CitizenHomeViewController.swift
//  E-Police Station
//
//  Created by Apple on 01/01/24.
//

import UIKit

class CitizenHomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func AddNewFIR(_ sender: Any) {
        let main = storyboard?.instantiateViewController(withIdentifier: "AddFIRViewController") as! AddFIRViewController
        self.navigationController?.pushViewController(main, animated: true)
    }
    
    @IBAction func AddNewComplation(_ sender: Any) {
        let main = storyboard?.instantiateViewController(withIdentifier: "OnlineComplaintViewController") as! OnlineComplaintViewController
        self.navigationController?.pushViewController(main, animated: true)
    }
    
    @IBAction func ViewFIR(_ sender: Any) {
    }
    @IBAction func ViewComplation(_ sender: Any) {
    }
    
    @IBAction func NearPoliceStation(_ sender: Any) {
        let main = storyboard?.instantiateViewController(withIdentifier: "FindPoliceStationViewController") as! FindPoliceStationViewController
        self.navigationController?.pushViewController(main, animated: true)
    }
    @IBAction func GiveFeedback(_ sender: Any) {
        let main = storyboard?.instantiateViewController(withIdentifier: "GiveFeedBackViewController") as! GiveFeedBackViewController
        self.navigationController?.pushViewController(main, animated: true)
    }
    
}
