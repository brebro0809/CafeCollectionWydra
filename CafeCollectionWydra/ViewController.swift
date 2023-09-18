//
//  ViewController.swift
//  CafeCollectionWydra
//
//  Created by BRENDEN WYDRA on 9/18/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let items = ["coffee", "tea", "espresso", "bagel", "donut"]
        let prices = [5.00, 3.50, 3.00, 5.00, 6.75]
        
        displayLabel.text = ""
        
        for index in 0..<(items.count){
            displayLabel.text = (displayLabel.text ?? "") + "\(items[index]): \(prices[index]), "
        }
    }
    
}

