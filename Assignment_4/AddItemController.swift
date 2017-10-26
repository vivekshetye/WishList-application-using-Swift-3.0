//
//  AddItemController.swift
//  Assignment_4
//
//  Created by Vivek Shetye on 10/22/17.
//  Copyright © 2017 Appfish. All rights reserved.
//

import Foundation
import UIKit

class AddItemController: UIViewController {
    
    let addItemBtn = UIButton(type: .system)
    
    let itemName = UILabel()
    let itemNameTextField = UITextField()
    
    let itemDesc = UILabel()
    let itemDescTextField = UITextField()
    
    let itemPrice = UILabel()
    let itemPriceTextField = UITextField()
    
    let itemType = UILabel()
    let itemTypeTextField = UITextField()
    
    let storeName = UILabel()
    let storeNameTextField = UITextField()
    
    let storePhone = UILabel()
    let storePhoneTextField = UITextField()
    
    let storeAddress = UILabel()
    let storeAddressTextField = UITextField()
    
    
//    var wishList = WishList()
    let backBtn = UIButton(type: .system)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 204/255, green: 255/255, blue: 204/255, alpha:1.0)
        setAddView()
    }
    
    func setAddView() {
        
        
        view.addSubview(backBtn)
        backBtn.translatesAutoresizingMaskIntoConstraints = false
        backBtn.setTitle("Back", for: .normal)
        backBtn.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5).isActive = true
        backBtn.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        backBtn.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 100).isActive = true
        backBtn.heightAnchor.constraint(equalToConstant: 25).isActive = true
        backBtn.backgroundColor = UIColor.black
        backBtn.layer.cornerRadius = 5
        backBtn.layer.masksToBounds = true
        backBtn.setTitleColor(UIColor.white, for: .normal)
        backBtn.addTarget(self, action: #selector(backBtnPressed), for: .touchUpInside)
        
        view.addSubview(itemName)
        itemName.translatesAutoresizingMaskIntoConstraints = false
        itemName.text = "Item Name"
        itemName.font = itemName.font.withSize(11)
        itemName.textColor = UIColor.black
        itemName.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        itemName.topAnchor.constraint(equalTo: backBtn.bottomAnchor, constant: 30).isActive = true
        itemName.heightAnchor.constraint(equalToConstant: 15).isActive = true
        
        view.addSubview(itemNameTextField)
        itemNameTextField.placeholder = "Enter item name"
        itemNameTextField.translatesAutoresizingMaskIntoConstraints = false
        itemNameTextField.borderStyle = .roundedRect
        itemNameTextField.topAnchor.constraint(equalTo: itemName.bottomAnchor, constant: 5).isActive = true
        itemNameTextField.heightAnchor.constraint(equalToConstant:30).isActive = true
        itemNameTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        itemNameTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25).isActive = true
        
        view.addSubview(itemDesc)
        itemDesc.translatesAutoresizingMaskIntoConstraints = false
        itemDesc.text = "Item Description"
        itemDesc.font = itemDesc.font.withSize(11)
        itemDesc.textColor = UIColor.black
        itemDesc.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        itemDesc.topAnchor.constraint(equalTo: itemNameTextField.bottomAnchor, constant: 20).isActive = true
        itemDesc.heightAnchor.constraint(equalToConstant: 15).isActive = true
        
        view.addSubview(itemDescTextField)
        itemDescTextField.placeholder = "Enter item description"
        itemDescTextField.translatesAutoresizingMaskIntoConstraints = false
        itemDescTextField.borderStyle = .roundedRect
        itemDescTextField.topAnchor.constraint(equalTo: itemDesc.bottomAnchor, constant: 5).isActive = true
        itemDescTextField.heightAnchor.constraint(equalToConstant:30).isActive = true
        itemDescTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        itemDescTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25).isActive = true
        
        view.addSubview(itemPrice)
        itemPrice.translatesAutoresizingMaskIntoConstraints = false
        itemPrice.text = "Item Price"
        itemPrice.font = itemPrice.font.withSize(11)
        itemPrice.textColor = UIColor.black
        itemPrice.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        itemPrice.topAnchor.constraint(equalTo: itemDescTextField.bottomAnchor, constant: 20).isActive = true
        itemPrice.heightAnchor.constraint(equalToConstant: 15).isActive = true
        
        view.addSubview(itemPriceTextField)
        itemPriceTextField.placeholder = "Enter item price"
        itemPriceTextField.translatesAutoresizingMaskIntoConstraints = false
        itemPriceTextField.borderStyle = .roundedRect
        itemPriceTextField.topAnchor.constraint(equalTo: itemPrice.bottomAnchor, constant: 5).isActive = true
        itemPriceTextField.heightAnchor.constraint(equalToConstant:30).isActive = true
        itemPriceTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        itemPriceTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25).isActive = true
        
        view.addSubview(itemType)
        itemType.translatesAutoresizingMaskIntoConstraints = false
        itemType.text = "Item Type"
        itemType.font = itemType.font.withSize(11)
        itemType.textColor = UIColor.black
        itemType.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        itemType.topAnchor.constraint(equalTo: itemPriceTextField.bottomAnchor, constant: 20).isActive = true
        itemType.heightAnchor.constraint(equalToConstant: 15).isActive = true
        
        view.addSubview(itemTypeTextField)
        itemTypeTextField.placeholder = "Enter item type"
        itemTypeTextField.translatesAutoresizingMaskIntoConstraints = false
        itemTypeTextField.borderStyle = .roundedRect
        itemTypeTextField.topAnchor.constraint(equalTo: itemType.bottomAnchor, constant: 5).isActive = true
        itemTypeTextField.heightAnchor.constraint(equalToConstant:30).isActive = true
        itemTypeTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        itemTypeTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25).isActive = true
        
        view.addSubview(storeName)
        storeName.translatesAutoresizingMaskIntoConstraints = false
        storeName.text = "Store name"
        storeName.font = storeName.font.withSize(11)
        storeName.textColor = UIColor.black
        storeName.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        storeName.topAnchor.constraint(equalTo: itemTypeTextField.bottomAnchor, constant: 20).isActive = true
        storeName.heightAnchor.constraint(equalToConstant: 15).isActive = true
        
        view.addSubview(storeNameTextField)
        storeNameTextField.placeholder = "Enter store name"
        storeNameTextField.translatesAutoresizingMaskIntoConstraints = false
        storeNameTextField.borderStyle = .roundedRect
        storeNameTextField.topAnchor.constraint(equalTo: storeName.bottomAnchor, constant: 5).isActive = true
        storeNameTextField.heightAnchor.constraint(equalToConstant:30).isActive = true
        storeNameTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        storeNameTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25).isActive = true
        
        view.addSubview(storePhone)
        storePhone.translatesAutoresizingMaskIntoConstraints = false
        storePhone.text = "Store phone"
        storePhone.font = storePhone.font.withSize(11)
        storePhone.textColor = UIColor.black
        storePhone.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        storePhone.topAnchor.constraint(equalTo: storeNameTextField.bottomAnchor, constant: 20).isActive = true
        storePhone.heightAnchor.constraint(equalToConstant: 15).isActive = true
        
        view.addSubview(storePhoneTextField)
        storePhoneTextField.placeholder = "Enter store phone"
        storePhoneTextField.translatesAutoresizingMaskIntoConstraints = false
        storePhoneTextField.borderStyle = .roundedRect
        storePhoneTextField.topAnchor.constraint(equalTo: storePhone.bottomAnchor, constant: 5).isActive = true
        storePhoneTextField.heightAnchor.constraint(equalToConstant:30).isActive = true
        storePhoneTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        storePhoneTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25).isActive = true
        
        view.addSubview(storeAddress)
        storeAddress.translatesAutoresizingMaskIntoConstraints = false
        storeAddress.text = "Store address"
        storeAddress.font = storeAddress.font.withSize(11)
        storeAddress.textColor = UIColor.black
        storeAddress.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        storeAddress.topAnchor.constraint(equalTo: storePhoneTextField.bottomAnchor, constant: 20).isActive = true
        storeAddress.heightAnchor.constraint(equalToConstant: 15).isActive = true
        
        view.addSubview(storeAddressTextField)
        storeAddressTextField.placeholder = "Enter store address"
        storeAddressTextField.translatesAutoresizingMaskIntoConstraints = false
        storeAddressTextField.borderStyle = .roundedRect
        storeAddressTextField.topAnchor.constraint(equalTo: storeAddress.bottomAnchor, constant: 5).isActive = true
        storeAddressTextField.heightAnchor.constraint(equalToConstant:30).isActive = true
        storeAddressTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        storeAddressTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25).isActive = true
        
        view.addSubview(addItemBtn)
        addItemBtn.translatesAutoresizingMaskIntoConstraints = false
        addItemBtn.setTitle("Add Item", for: .normal)
        addItemBtn.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5).isActive = true
        addItemBtn.topAnchor.constraint(equalTo: storeAddressTextField.bottomAnchor, constant: 20).isActive = true
        addItemBtn.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 100).isActive = true
        addItemBtn.heightAnchor.constraint(equalToConstant: 25).isActive = true
        addItemBtn.backgroundColor = UIColor.black
        addItemBtn.layer.cornerRadius = 5
        addItemBtn.layer.masksToBounds = true
        addItemBtn.setTitleColor(UIColor.white, for: .normal)
        addItemBtn.addTarget(self, action: #selector(addButtonPressed), for: .touchUpInside)
        
        
        
    }
    
    func backBtnPressed() {
        dismiss(animated: true, completion: nil)
    }
    
    func addButtonPressed() {
        
        let itemNamecheck = itemNameTextField.text!
        let itemDescCheck = itemDescTextField.text!
        let itemPriceCheck = itemPriceTextField.text!
        let itemTypeCheck = itemTypeTextField.text!
        let storeNameCheck = storeNameTextField.text!
        let storePhoneCheck = storePhoneTextField.text!
        let storeAddressCheck = storeAddressTextField.text!
        
        if (itemNamecheck == "") || (itemDescCheck == "") || Float(itemPriceCheck) == nil || (itemTypeCheck == "") || (storeNameCheck == "") || Int64(storePhoneCheck) == nil || (storeAddressCheck == "") {
            
            if Float(itemPriceTextField.text!) == nil {
                // create the alert
                let alert = UIAlertController(title: "Error", message: "Please enter valid item price", preferredStyle: UIAlertControllerStyle.alert)
                
                // add an action (button)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                
                // show the alert
                self.present(alert, animated: true, completion: nil)
            } else if Int64(storePhoneTextField.text!) == nil {
                // create the alert
                let alert = UIAlertController(title: "Error", message: "Please enter valid store phone", preferredStyle: UIAlertControllerStyle.alert)
                
                // add an action (button)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                
                // show the alert
                self.present(alert, animated: true, completion: nil)
            } else {
            
            // create the alert
            let alert = UIAlertController(title: "Error", message: "Please enter valid input", preferredStyle: UIAlertControllerStyle.alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
            }
            
        } else {
        let store = Store( storeAddressTextField.text!, Int64(storePhoneTextField.text!)!, storeNameTextField.text!)
        let item = Item(itemNameTextField.text!, itemDescTextField.text!, Float(itemPriceTextField.text!)!, itemTypeTextField.text!, store)
        WishList.sharedInstance.additem(item)
        
        // create the alert
        let alert = UIAlertController(title: "Success", message: "Item was created successfully.", preferredStyle: UIAlertControllerStyle.alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
           // resetFields()
        }
        
//        let addItemController = AddItemController()
//        addItemController.wishList = wishList
//        self.present(addItemController, animated:true, completion:nil)
    }
    
    func resetFields() {
        itemNameTextField.text = ""
        itemDescTextField.text = ""
        itemPriceTextField.text = ""
        itemTypeTextField.text = ""
        storeNameTextField.text = ""
        storeAddressTextField.text = ""
        storePhoneTextField.text = ""
    }
    
    
}
