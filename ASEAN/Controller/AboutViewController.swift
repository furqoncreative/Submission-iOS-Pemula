//
//  AboutViewController.swift
//  ASEAN
//
//  Created by Dicoding Reviewer on 07/08/21.
//

import UIKit

class AboutViewController: UIViewController {

    @IBOutlet weak var photo: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        photo.layer.cornerRadius = photo.frame.height / 2
        photo.clipsToBounds = true
    }


}
