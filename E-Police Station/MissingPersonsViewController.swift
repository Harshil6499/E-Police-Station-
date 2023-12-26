//
//  MissingPersonsViewController.swift
//  E-Police Station
//
//  Created by Apple on 25/12/23.
//

import UIKit

class MissingPersonsViewController: UIViewController{
    
    @IBOutlet weak var MyPersonCollectionView: UICollectionView!
    
    @IBAction func EmergencyBtn(_ sender: Any) {
        let main = storyboard?.instantiateViewController(identifier: "EmergencyViewController") as! EmergencyViewController
        self.navigationController?.pushViewController(main, animated: true)
    }
    var arr_name = ["Rashmi Bhatt","Mayur Rau","Shweta Rattan","Kiran Chaudhari","Drishya Kumer","Adnan Ahuja","Rishi Dhawan","Vritika Ganesan","Amitabh Narayan","Nilam Kohli","Manu Meda","Advay Cheema","Amit Dutt","Subhash Parmar"]
    
    var arr_city = ["Rajkot","Surat","Bharuch","Rajkot","Ahemdabad","Bhuj","Dwarka","Jamnagar","Vadodara","Morbi","Ahemdabad","Patan","Porbandar","Dahod"]
    
    var arr_image = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.MyPersonCollectionView.delegate = self
        self.MyPersonCollectionView.dataSource = self
       
    }
    
}

extension MissingPersonsViewController:UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
            // Adjust the section inset as needed
            return UIEdgeInsets(top: 20, left: 20, bottom: 10, right: 20)
        }
   
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let cellWidth: CGFloat = 180
        let cellHeight: CGFloat = 200
        return CGSize(width: cellWidth, height: cellHeight)
        
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let item = arr_name
        return item.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MissingPersonsCollectionViewCell", for: indexPath) as? MissingPersonsCollectionViewCell
        
        let item = arr_name[indexPath.item]
        cell!.PersonName.text = item
        
        let item0 = UIImage(named: arr_image[indexPath.row])
        cell!.PersonImage.image = item0
    
        let item2 = arr_city[indexPath.row]
        cell!.PersonCity.text = item2
        
        return cell!
        
    }
    
}
