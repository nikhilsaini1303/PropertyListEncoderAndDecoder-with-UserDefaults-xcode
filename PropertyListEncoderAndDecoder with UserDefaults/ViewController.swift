//
//  ViewController.swift
//  PropertyListEncoderAndDecoder with UserDefaults
//
//  Created by Nikhil Saini on 20/04/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var ageTextField: UITextField!
    
    @IBOutlet weak var cityTextField: UITextField!
    
    @IBOutlet weak var contactTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveTapped(_ sender: Any) {
        
        let obj = CustomerDetail()
        
        obj.cName = nameTextField.text!
        obj.cAge = Int(ageTextField.text!) ?? 0
        obj.cCity = cityTextField.text!
        obj.cContact = contactTextField.text!
        
        UserDefaults.standard.set(try? PropertyListEncoder().encode(obj), forKey: "customerdetail")
        
        print("Data Has Been Saved Successfully")
        
    }
    
    @IBAction func getDataFromUserDefaultsTapped(_ sender: Any) {
        
        var retriveObj = CustomerDetail()
        
        if let userData = UserDefaults.standard.value(forKey: "customerdetail") as? Data {
            let retriveObj = try? PropertyListDecoder().decode(CustomerDetail.self, from: userData)
            
            print("CUSTOMER NAME : \(retriveObj?.cName ?? "")")
            print("CUSTOMER AGE : \(retriveObj?.cAge ?? 0)")
            print("CUSTOMER CITY : \(retriveObj?.cCity ?? "")")
            print("CUSTOMER CONTACT : \(retriveObj?.cContact ?? "")")
            
        }
        
    }
    

}

