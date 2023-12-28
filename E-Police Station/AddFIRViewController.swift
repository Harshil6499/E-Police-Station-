//
//  AddFIRViewController.swift
//  E-Police Station
//
//  Created by Apple on 28/12/23.
//

import UIKit

class AddFIRViewController: UIViewController {
    
    //Text Fields Outlate
    @IBOutlet weak var DistrictNameTXT: UITextField!
    @IBOutlet weak var PoliceStationNameTXT: UITextField!
    @IBOutlet weak var FIRNumberTXT: UITextField!
    @IBOutlet weak var AccusedNameTXT: UITextField!
    @IBOutlet weak var ComplainantNameTXT: UITextField!
    @IBOutlet weak var ComplainantMiddleNameTXT: UITextField!
    @IBOutlet weak var ComplainantSurnameTXT: UITextField!
    @IBOutlet weak var FromDateFIRTXT: UITextField!
    @IBOutlet weak var ToDateFIRTXT: UITextField!
    
    @IBAction func FIRConfirmBTN(_ sender: Any) {
        let main = storyboard?.instantiateViewController(withIdentifier: "OnlineComplaintViewController") as! OnlineComplaintViewController
        self.navigationController?.pushViewController(main, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
