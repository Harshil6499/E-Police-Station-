//
//  MissingPersonsCollectionViewCell.swift
//  E-Police Station
//
//  Created by Apple on 25/12/23.
//

import UIKit

class MissingPersonsCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var PersonImage: UIImageView!
    @IBOutlet weak var PersonName: UILabel!
    @IBOutlet weak var PersonCity: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        layer.borderWidth = 1.0
        layer.borderColor = UIColor.black.cgColor
        layer.cornerRadius = 8.0
       
    }

}
