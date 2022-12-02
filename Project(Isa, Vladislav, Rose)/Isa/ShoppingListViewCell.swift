//
//  ShoppingListViewCell.swift
//  Project(Isa, Vladislav, Rose)
//
//  Created by Иса on 01.12.2022.
//

import UIKit

class ShoppingListViewCell: UITableViewCell {
    
    @IBOutlet var nameShopping: UILabel!
    @IBOutlet var totalPriceShopping: UILabel!
    @IBOutlet var imageChekbox: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        let tap = UITapGestureRecognizer(target: self, action: #selector(tappedImage))
        imageChekbox.addGestureRecognizer(tap)
        imageChekbox.isUserInteractionEnabled = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configure(_ shopping: ShoppingLists) {
        nameShopping.text = shopping.name
        totalPriceShopping.text = shopping.totalPrice == 0 ? "" : String(format: "Общая сумма: %.1f₽", shopping.totalPrice)
        imageChekbox.image = UIImage(named: "checkboxFalse")
    }
    
    @objc func tappedImage() {
        imageChekbox.image = imageChekbox.image == UIImage(named: "checkboxFalse") ? UIImage(named: "checkboxTrue") : UIImage(named: "checkboxFalse")
    }
}
