//
//  ListItemController.swift
//  Assignment_4
//
//  Created by Vivek Shetye on 10/22/17.
//  Copyright © 2017 Appfish. All rights reserved.
//

import Foundation
import UIKit

class ListItemController: UIViewController {
    
//    var wishList = WishList()
//    let itemName = UILabel()
    let itemName2 = UILabel()
    let backBtn = UIButton(type: .system)
//    let scrollView = UIScrollView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 204/255, green: 255/255, blue: 204/255, alpha:1.0)
        setListView()
        
        
    }
    
    func setListView() {
        
        
        view.addSubview(backBtn)
        backBtn.translatesAutoresizingMaskIntoConstraints = false
        backBtn.setTitle("Back", for: .normal)
        backBtn.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.2).isActive = true
        backBtn.topAnchor.constraint(equalTo: view.topAnchor, constant: 25).isActive = true
        backBtn.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        backBtn.heightAnchor.constraint(equalToConstant: 25).isActive = true
        backBtn.backgroundColor = UIColor.black
        backBtn.layer.cornerRadius = 5
        backBtn.layer.masksToBounds = true
        backBtn.setTitleColor(UIColor.white, for: .normal)
        backBtn.addTarget(self, action: #selector(backBtnPressed), for: .touchUpInside)
        
        
//        scrollView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 8.0).isActive = true
//        scrollView.topAnchor.constraint(equalTo: backBtn.bottomAnchor, constant: 20.0).isActive = true
//        scrollView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -8.0).isActive = true
//        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -8.0).isActive = true
//
//        view.addSubview(scrollView)
        
        
        var counter = 100.0
        if WishList.sharedInstance.wishList.count == 0 {
            // create the alert
            let alert = UIAlertController(title: "Success", message: "Item was created successfully.", preferredStyle: UIAlertControllerStyle.alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
        } else {
        for i in 0...WishList.sharedInstance.wishList.count-1 {
            
            let itemName = UITextView()
//            let itemName = UITextView(frame: CGRect(x: 20.0, y: Double(counter), width: Double(UIScreen.main.bounds.width), height: 100.0))
            //itemName.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
            view.addSubview(itemName)
            
            itemName.translatesAutoresizingMaskIntoConstraints = false
            itemName.isUserInteractionEnabled = false
            
            
            itemName.text = " Item name: \(WishList.sharedInstance.wishList[i].itemName!) \n Item type: \(WishList.sharedInstance.wishList[i].itemType!) \n Store name : \(WishList.sharedInstance.wishList[i].store!.storeName!)"
            itemName.font = itemName.font?.withSize(11)
            itemName.textColor = UIColor.black
            itemName.backgroundColor = UIColor.white
            itemName.layer.borderColor = nil
            itemName.layer.borderWidth = 0
            itemName.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
            itemName.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
            itemName.topAnchor.constraint(equalTo: view.topAnchor, constant: CGFloat(counter)).isActive = true
            itemName.heightAnchor.constraint(equalToConstant: itemName.contentSize.height).isActive = true
//            itemName.size.height = itemName.contentSize.height;
            
//            if( i != WishList.sharedInstance.wishList.count-1 ) {
//                let lineView = UIView(frame: CGRect(x: 20.0, y: Double(counter + 10), width: 250.0, height: 1.0))
//                lineView.layer.borderWidth = 1.0
//                lineView.layer.borderColor = UIColor.black.cgColor
//                view.addSubview(lineView)
//            }
        
//        for i in 0...WishList.sharedInstance.wishList.count-1 {
//            itemName.insertText("Item name: \(WishList.sharedInstance.wishList[i].itemName!)\n\n")
//            if( i != WishList.sharedInstance.wishList.count-1 ) {
//                                itemName.insertText("_______________________________________________\n\n")
//                            }
//        }
        
            counter = counter + 50.0
         }
        }
//        view.addSubview(itemName)
//        itemName.translatesAutoresizingMaskIntoConstraints = false
//        itemName.text = WishList.sharedInstance.wishList[0].itemName
//        itemName.font = itemName.font.withSize(11)
//        itemName.textColor = UIColor(red: 255/255, green: 102/255, blue: 102/255, alpha:1.0)
//        itemName.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25).isActive = true
//        itemName.topAnchor.constraint(equalTo: view.topAnchor, constant: 220).isActive = true
//        itemName.heightAnchor.constraint(equalToConstant: 15).isActive = true
//        
//        view.addSubview(itemName2)
//        itemName2.translatesAutoresizingMaskIntoConstraints = false
//        itemName2.text = WishList.sharedInstance.wishList[1].itemName
//        itemName2.font = itemName.font.withSize(11)
//        itemName2.textColor = UIColor(red: 255/255, green: 102/255, blue: 102/255, alpha:1.0)
//        itemName2.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 100).isActive = true
//        itemName2.topAnchor.constraint(equalTo: itemName.topAnchor, constant: 50).isActive = true
//        itemName2.heightAnchor.constraint(equalToConstant: 15).isActive = true
        
        
        
        
        
        
    }
    
    func backBtnPressed() {
        dismiss(animated: true, completion: nil)
    }
    
}
