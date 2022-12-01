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
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(_ shopping: ShoppingLists) {
        nameShopping.text = shopping.name
        totalPriceShopping.text = shopping.totalPrice == 0 ? "" : "Общая сумма: \(shopping.totalPrice)"
        imageChekbox.image = UIImage(named: "checkbox()")
    }
}
