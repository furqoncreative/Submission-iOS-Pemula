//
//  DetailViewController.swift
//  ASEAN
//
//  Created by Dicoding Reviewer on 06/08/21.
//

import UIKit

class DetailViewController: UIViewController {


    @IBOutlet weak var flag: UIImageView!
    
    @IBOutlet weak var capital: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var curency: UILabel!
    @IBOutlet weak var nationalAnthem: UILabel!
    @IBOutlet weak var typeOfGoverment: UILabel!
    @IBOutlet weak var officialLanguage: UILabel!
    
    var country: Country?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let result = country {
            flag.image = result.flag
            name.text = result.name
            capital.text = ": \(result.capital)"
            curency.text = ": \(result.currency)"
            nationalAnthem.text = ": \(result.nationalAnthem)"
            typeOfGoverment.text = ": \(result.typeOfGoverment)"
            officialLanguage.text = ": \(result.officialLanguage)"
            
        }
    }

}
