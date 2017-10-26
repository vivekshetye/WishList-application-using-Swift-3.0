//
//  DeleteItemController.swift
//  Assignment_4
//
//  Created by Vivek Shetye on 10/22/17.
//  Copyright © 2017 Appfish. All rights reserved.
//

import Foundation
import UIKit

class DeleteItemController: UIViewController {
    
    let itemName = UILabel()
    let itemNameTextField = UITextField()
    let deleteBtn = UIButton(type: .system)
    let backBtn = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 204/255, green: 255/255, blue: 204/255, alpha:1.0)
        setDeleteView()
    }
    
    func setDeleteView() {
        
        view.addSubview(itemName)
        itemName.translatesAutoresizingMaskIntoConstraints = false
        itemName.text = "Item Name"
        itemName.font = itemName.font.withSize(11)
        itemName.textColor = UIColor.black
        itemName.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        itemName.topAnchor.constraint(equalTo: view.topAnchor, constant: 220).isActive = true
        itemName.heightAnchor.constraint(equalToConstant: 15).isActive = true
        
        view.addSubview(itemNameTextField)
        itemNameTextField.placeholder = "Enter the item name to delete"
        itemNameTextField.translatesAutoresizingMaskIntoConstraints = false
        itemNameTextField.borderStyle = .roundedRect
        itemNameTextField.topAnchor.constraint(equalTo: itemName.topAnchor, constant: 20).isActive = true
        itemNameTextField.heightAnchor.constraint(equalToConstant:30).isActive = true
        itemNameTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        itemNameTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25).isActive = true
        
        view.addSubview(deleteBtn)
        deleteBtn.translatesAutoresizingMaskIntoConstraints = false
        deleteBtn.setTitle("Delete", for: .normal)
        deleteBtn.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5).isActive = true
        deleteBtn.topAnchor.constraint(equalTo: itemNameTextField.topAnchor, constant: 50).isActive = true
        deleteBtn.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 100).isActive = true
        deleteBtn.heightAnchor.constraint(equalToConstant: 25).isActive = true
        deleteBtn.backgroundColor = UIColor.black
        deleteBtn.layer.cornerRadius = 5
        deleteBtn.layer.masksToBounds = true
        deleteBtn.setTitleColor(UIColor.white, for: .normal)
        deleteBtn.addTarget(self, action: #selector(deleteButtonPressed), for: .touchUpInside)
        
        view.addSubview(backBtn)
        backBtn.translatesAutoresizingMaskIntoConstraints = false
        backBtn.setTitle("Back", for: .normal)
        backBtn.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.2).isActive = true
        backBtn.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        backBtn.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        backBtn.heightAnchor.constraint(equalToConstant: 25).isActive = true
        backBtn.backgroundColor = UIColor.black
        backBtn.layer.cornerRadius = 5
        backBtn.layer.masksToBounds = true
        backBtn.setTitleColor(UIColor.white, for: .normal)
        backBtn.addTarget(self, action: #selector(backBtnPressed), for: .touchUpInside)
        
    }
    
    func deleteButtonPressed() {
        if itemNameTextField.text == "" {
            // create the alert
            let alert = UIAlertController(title: "Error", message: "Please give valid input", preferredStyle: UIAlertControllerStyle.alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
        } else {
        let deleteCheck = WishList.sharedInstance.delete(itemNameTextField.text!)
        if deleteCheck   {
            // create the alert
            let alert = UIAlertController(title: "Delete", message: "Item was deleted successfully.", preferredStyle: UIAlertControllerStyle.alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
        } else {
            // create the alert
            let alert = UIAlertController(title: "Delete Failed", message: "Could not find the item!", preferredStyle: UIAlertControllerStyle.alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
        }
        }
        
    }
    
    func backBtnPressed() {
        dismiss(animated: true, completion: nil)
    }
    
}
