//
//  ViewController.swift
//  ASEAN
//
//  Created by Dicoding Reviewer on 06/08/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countryTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        self.navigationItem.title = "Negara ASEAN"
        
        countryTableView.dataSource = self
        
        countryTableView.delegate = self
        
        countryTableView.register(UINib(nibName: "CountryTableViewCell", bundle: nil), forCellReuseIdentifier: "CountryCell")
    }

    @IBAction func actionToAbout(_ sender: UIBarButtonItem) {
        let about = AboutViewController(nibName: "AboutViewController", bundle: nil)
        self.navigationController?.pushViewController(about, animated: true)
    }
    
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell", for: indexPath) as? CountryTableViewCell {
            let country = countries[indexPath.row]
            cell.nameCountry.text = country.name
            cell.flagCountry.image = country.flag
            
            return cell
        } else {
            return UITableViewCell()
        }
    }
}

extension ViewController: UITableViewDelegate {
   func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detail = DetailViewController(nibName: "DetailViewController", bundle: nil)
        
        detail.country = countries[indexPath.row]

        self.navigationController?.pushViewController(detail, animated: true)
    }
}

