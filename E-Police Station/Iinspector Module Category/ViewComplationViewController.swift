//
//  ViewComplationViewController.swift
//  E-Police Station
//
//  Created by Apple on 01/01/24.
//

import UIKit

class ViewComplationViewController: UIViewController {
    
    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    @IBOutlet weak var lbl3: UILabel!
    @IBOutlet weak var lbl4: UILabel!
    @IBOutlet weak var lbl5: UILabel!
    @IBOutlet weak var lbl6: UILabel!
    @IBOutlet weak var lbl7: UILabel!
    @IBOutlet weak var lbl8: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadUserData()
        
    }
    
    func loadUserData() {
        let userDefaults = UserDefaults.standard

        // Load data from UserDefaults to populate text fields
        lbl1.text = userDefaults.string(forKey: "ComplaintRegistrationDate")
        lbl2.text = userDefaults.string(forKey: "Name")
        lbl3.text = userDefaults.string(forKey: "MobileNumber")
        lbl4.text = userDefaults.string(forKey: "Email")
        lbl5.text = userDefaults.string(forKey: "Gender")
        lbl6.text = userDefaults.string(forKey: "LocationArea")
        lbl7.text = userDefaults.string(forKey: "NearPoliceStation")
        lbl8.text = userDefaults.string(forKey: "Location")
    }
}
