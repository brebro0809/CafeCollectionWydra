//
//  ViewController.swift
//  CafeCollectionWydra
//
//  Created by BRENDEN WYDRA on 9/18/23.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var mainText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainText.isEditable = false
        
        let items = ["coffee", "tea", "espresso", "bagel", "donut"]
        let prices = [5.00, 3.50, 3.00, 5.00, 6.75]
        
        mainText.text = ""
        
        for index in 0..<(items.count){
            mainText.text = (mainText.text ?? "") + "- \(items[index]): \(prices[index]) \n"
        }
    }
    
}

