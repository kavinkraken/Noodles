//
//  ListTableViewCell.swift
//  Noddles
//
//  Created by Kavinkumar S Thangammal on 20/12/22.
//

import UIKit

class ListTableViewCell: UITableViewCell {
    @IBOutlet weak var labelBrand: UILabel!
    @IBOutlet weak var labelVariety: UILabel!
    @IBOutlet weak var labelStyle: UILabel!
    @IBOutlet weak var labelStars: UILabel!
    @IBOutlet weak var labelCountry: UILabel!
    @IBOutlet weak var labelTopten: UILabel!
    @IBOutlet weak var imageIcon: UIImageView!
    @IBOutlet weak var buttonSelect: UIButton!
    
    var itemInfo: ModelNoodle? = nil {
        didSet {
            labelBrand.text = itemInfo?.brand
            labelStars.text = itemInfo?.stars
            labelStyle.text = itemInfo?.style
            labelTopten.text = itemInfo?.topTen
            labelCountry.text = itemInfo?.country
            labelVariety.text = itemInfo?.variety
        }
    }
    @IBAction func buttonSelect(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }
}



class UserTableViewCell: UITableViewCell {
    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var textFieldAge: UITextField!
    
    
}
extension UserTableViewCell : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return self.endEditing(true)
    }
}
