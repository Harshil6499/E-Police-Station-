//
//  ViewFIRViewController.swift
//  E-Police Station
//
//  Created by Apple on 01/01/24.
//

import UIKit

class ViewFIRViewController: UIViewController{
    
//    var var1 = [String]()
//    var var2 = [String]()
//    var var3 = [String]()
//    var var4 = [String]()
//    var var5 = [String]()
//    var var6 = [String]()
//    var var7 = [String]()
//    var var8 = [String]()
//    var var9 = [String]()
//    
//    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return var1.count
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let main = tableView.dequeueReusableCell(withIdentifier: "teTableViewCell", for: indexPath) as!
//        teTableViewCell
//        main.LBL1.text = var1[indexPath.row]
//        main.LBL2.text = var2[indexPath.row]
//        main.LBL3.text = var3[indexPath.row]
//        main.LBL4.text = var4[indexPath.row]
//        main.LBL5.text = var5[indexPath.row]
//        main.LBL6.text = var6[indexPath.row]
//        main.LBL7.text = var7[indexPath.row]
//        main.LBL8.text = var8[indexPath.row]
//        main.LBL9.text = var9[indexPath.row]
//        
//        return main
//    }
    
   
    
    //@IBOutlet weak var DataShowTableView: UITableView!
    @IBOutlet weak var LBL1: UILabel!
    @IBOutlet weak var LBL2: UILabel!
    @IBOutlet weak var LBL3: UILabel!
    @IBOutlet weak var LBL4: UILabel!
    @IBOutlet weak var LBL5: UILabel!
    @IBOutlet weak var LBL6: UILabel!
    @IBOutlet weak var LBL7: UILabel!
    @IBOutlet weak var LBL8: UILabel!
    @IBOutlet weak var LBL9: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadUserData()
        
    }
    
    func loadUserData() {
        let userDefaults = UserDefaults.standard

        // Load data from UserDefaults to populate text fields
        LBL1.text = userDefaults.string(forKey: "DistrictName")
        LBL2.text = userDefaults.string(forKey: "PoliceStationName")
        LBL3.text = userDefaults.string(forKey: "FIRNumber")
        LBL4.text = userDefaults.string(forKey: "AccusedName")
        LBL5.text = userDefaults.string(forKey: "ComplainantName")
        LBL6.text = userDefaults.string(forKey: "ComplainantMiddleName")
        LBL7.text = userDefaults.string(forKey: "ComplainantSurname")
        LBL8.text = userDefaults.string(forKey: "FromDate")
        LBL9.text = userDefaults.string(forKey: "Number")
    }
    
    
}
