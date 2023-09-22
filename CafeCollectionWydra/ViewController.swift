//
//  ViewController.swift
//  CafeCollectionWydra
//
//  Created by BRENDEN WYDRA on 9/18/23.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var mainText: UITextView!
    @IBOutlet weak var cartText: UITextView!
    @IBOutlet weak var itemInput: UITextField!
    @IBOutlet weak var amountInput: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var passwordInput: UITextField!
    
    var items = ["coffee", "tea", "espresso", "bagel", "donut"]
    var prices = [5.00, 3.50, 3.00, 5.00, 6.75]
    var cart: [Int:Int] = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        
        mainText.isEditable = false
        
        mainText.text = ""
        
        for index in 0..<(items.count){
            mainText.text = (mainText.text ?? "") + "- \(items[index]): \(prices[index]) \n"
        }
    }
    
    @IBAction func cartPressed(_ sender: UIButton) {
        if let index = items.firstIndex(of: itemInput.text ?? "") {
            if let amount = Int(amountInput.text ?? ""){
                errorLabel.isHidden = true
                
                if let inCart = cart[index] {
                    errorLabel.text = "Item Already In Cart :)"
                    errorLabel.isHidden = false
                } else {
                    cart[index] = amount
                    updateCart()
                }
                
            } else {
                errorLabel.text = "Enter Valid Input :("
                errorLabel.isHidden = false
            }
        }
        else{
            errorLabel.text = "Enter Valid Input :("
            errorLabel.isHidden = false
        }
    }
    
    func updateCart() {
        cartText.text = ""
        var total = 0.0
        
        for(item, amount) in cart {
            cartText.text += "\(items[item]) X \(amount) \n"
            total += prices[item] * Double(amount)
        }
        totalLabel.text = "Cart Total: $\(total)"
    }
    
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
}

