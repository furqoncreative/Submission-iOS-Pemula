//
//  CountryTableViewCell.swift
//  ASEAN
//
//  Created by Dicoding Reviewer on 06/08/21.
//

import UIKit

class CountryTableViewCell: UITableViewCell {

    @IBOutlet weak var flagCountry: UIImageView!
    @IBOutlet weak var nameCountry: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
