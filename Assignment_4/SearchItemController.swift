//
//  SearchItemController.swift
//  Assignment_4
//
//  Created by Vivek Shetye on 10/22/17.
//  Copyright © 2017 Appfish. All rights reserved.
//

import Foundation
import UIKit

class SearchItemController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var pickerView = UIPickerView()
    var textBox = UITextField()
    var textBox2 = UITextField()
    var searchButton = UIButton(type: .system)
    let backBtn = UIButton(type: .system)
    var list = ["Search by item name", "Search by Category"]
    
    
    
//    let pickerList = ["Search by Name", "Search by Category"]
//    
//    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 204/255, green: 255/255, blue: 204/255, alpha:1.0)
        
        searchView()
    }
    
    func searchView() {
        view.addSubview(backBtn)
        backBtn.translatesAutoresizingMaskIntoConstraints = false
        backBtn.setTitle("Back", for: .normal)
        backBtn.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.2).isActive = true
        backBtn.topAnchor.constraint(equalTo: view.topAnchor, constant: 30).isActive = true
        backBtn.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        backBtn.heightAnchor.constraint(equalToConstant: 25).isActive = true
        backBtn.backgroundColor = UIColor.black
        backBtn.layer.cornerRadius = 5
        backBtn.layer.masksToBounds = true
        backBtn.setTitleColor(UIColor.white, for: .normal)
        backBtn.addTarget(self, action: #selector(backBtnPressed), for: .touchUpInside)
        
        view.addSubview(textBox)
        textBox.translatesAutoresizingMaskIntoConstraints = false
        textBox.borderStyle = .roundedRect
        //textBox.placeholder = "Please select search type"
        textBox.text = "Search by item name"
        //textBox.isUserInteractionEnabled = false
        textBox.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        textBox.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        textBox.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
        textBox.inputView = pickerView
        textBox.addTarget(self, action: "myPickerVisible:", for: UIControlEvents.touchUpInside)
        textBox.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        
        view.addSubview(textBox2)
        textBox2.translatesAutoresizingMaskIntoConstraints = false
        textBox2.borderStyle = .roundedRect
        textBox2.placeholder = "Please enter your search input"
        textBox2.topAnchor.constraint(equalTo: textBox.topAnchor, constant: 50).isActive = true
        textBox2.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
        textBox2.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
        
        pickerView.translatesAutoresizingMaskIntoConstraints = false
        pickerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 200)
        pickerView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0)
        pickerView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1)
        
        
        
        pickerView.delegate = self
        pickerView.dataSource = self
        
        view.addSubview(searchButton)
        searchButton.translatesAutoresizingMaskIntoConstraints = false
        searchButton.setTitle("Search", for: .normal)
        searchButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5).isActive = true
        searchButton.topAnchor.constraint(equalTo: textBox2.topAnchor, constant: 50).isActive = true
        searchButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 100).isActive = true
        searchButton.heightAnchor.constraint(equalToConstant: 25).isActive = true
        searchButton.backgroundColor = UIColor.black
        searchButton.layer.cornerRadius = 5
        searchButton.layer.masksToBounds = true
        searchButton.setTitleColor(UIColor.white, for: .normal)
        searchButton.addTarget(self, action: #selector(searchBtnPressed), for: .touchUpInside)
        
    }
    
//
//    
    func myPickerVisible() {
        view.addSubview(pickerView)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
//    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return list.count
    }
//    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return list[row]
    }
//    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        self.textBox.text = self.list[row]
        
    }
    
    func textFieldDidChange(_ textField: UITextField) {
        view.willRemoveSubview(pickerView)
    }

    func searchBtnPressed() {
        var searchList:[Item] = []
        print(textBox.text!)
        if textBox.text == ""  {
            // create the alert
            let alert = UIAlertController(title: "Error", message: "Please select a valid search type!", preferredStyle: UIAlertControllerStyle.alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
        } else {
            
            if textBox.text == "Search by item name" {
                
                if textBox2.text == "" {
                    // create the alert
                    let alert = UIAlertController(title: "Error", message: "Please enter search input!", preferredStyle: UIAlertControllerStyle.alert)
                    
                    // add an action (button)
                    alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                    
                    // show the alert
                    self.present(alert, animated: true, completion: nil)
                } else {
                    searchList = WishList.sharedInstance.searchitem(textBox2.text!)
                    displaySearchResult(searchList)
                }
                
            } else if textBox.text == "Search by Category" {
                
                if textBox2.text == "" {
                    // create the alert
                    let alert = UIAlertController(title: "Error", message: "Please select search input!", preferredStyle: UIAlertControllerStyle.alert)
                    
                    // add an action (button)
                    alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                    
                    // show the alert
                    self.present(alert, animated: true, completion: nil)
                } else {
                    searchList = WishList.sharedInstance.searchByCategory(textBox2.text!)
                    displaySearchResult(searchList)
                }
                
            } else {
                // create the alert
                let alert = UIAlertController(title: "Error", message: "Please select a valid search type!", preferredStyle: UIAlertControllerStyle.alert)
                
                // add an action (button)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                
                // show the alert
                self.present(alert, animated: true, completion: nil)
            }
            
        }
    }
    
    func displaySearchResult(_ searchResult:[Item]) {
        
        var views = view.subviews;
        var textViewIndexCount:[Int] = []
        
        if views.count != 0 {
            for i in 0...views.count-1 {
                if ((views[i] as? UITextView) != nil) {
                    textViewIndexCount.append(i)
                }
            }
            
            if textViewIndexCount.count != 0 {
                for j in 0...textViewIndexCount.count-1 {
                    views[textViewIndexCount[j]].removeFromSuperview()
                }
            }
        }
        
        if searchResult.count != 0 {
            var counter = 50.0
            
            for i in 0...searchResult.count-1 {
                
                let itemName = UITextView()
                //            let itemName = UITextView(frame: CGRect(x: 20.0, y: Double(counter), width: Double(UIScreen.main.bounds.width), height: 100.0))
                //itemName.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
                view.addSubview(itemName)
                itemName.translatesAutoresizingMaskIntoConstraints = false
                
                
                
                itemName.text = " Item name: \(searchResult[i].itemName!) \n Item type: \(searchResult[i].itemType!) \n Store name : \(searchResult[i].store!.storeName!)"
                itemName.font = itemName.font?.withSize(11)
                itemName.textColor = UIColor.black
                itemName.backgroundColor = UIColor.white
                itemName.layer.borderColor = nil
                itemName.layer.borderWidth = 0
                itemName.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
                itemName.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
                itemName.topAnchor.constraint(equalTo: searchButton.bottomAnchor, constant: CGFloat(counter)).isActive = true
                itemName.heightAnchor.constraint(equalToConstant: itemName.contentSize.height).isActive = true
                
                
                counter = counter + 50.0
            }        } else {
            let alert = UIAlertController(title: "Error", message: "No items found!", preferredStyle: UIAlertControllerStyle.alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
            
        }
        
    }
    
    func backBtnPressed() {
        dismiss(animated: true, completion: nil)
    }
    
}

