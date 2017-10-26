//
//  ViewController.swift
//  Assignment_4
//
//  Created by Vivek Shetye on 10/22/17.
//  Copyright © 2017 Appfish. All rights reserved.
//

import UIKit

//var wishList = WishList()

class ViewController: UIViewController {

    
    
    let addItemBtn = UIButton(type: .system)
    let searchItemBtn = UIButton(type: .system)
    let listItemBtn = UIButton(type: .system)
    let deleteItemBtn = UIButton(type: .system)
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 204/255, green: 255/255, blue: 204/255, alpha:1.0)
            setHomeView()
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setHomeView() {
        
        view.addSubview(addItemBtn)
        addItemBtn.translatesAutoresizingMaskIntoConstraints = false
        addItemBtn.setTitle("Add Item", for: .normal)
        addItemBtn.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5).isActive = true
        addItemBtn.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        addItemBtn.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 100).isActive = true
        addItemBtn.heightAnchor.constraint(equalToConstant: 25).isActive = true
        addItemBtn.backgroundColor = UIColor.black
        addItemBtn.layer.cornerRadius = 5
        addItemBtn.layer.masksToBounds = true
        addItemBtn.setTitleColor(UIColor.white, for: .normal)
        
        addItemBtn.addTarget(self, action: #selector(addButtonPressed), for: .touchUpInside)
        
        
        view.addSubview(listItemBtn)
        listItemBtn.translatesAutoresizingMaskIntoConstraints = false
        listItemBtn.setTitle("List Items", for: .normal)
        listItemBtn.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5).isActive = true
        listItemBtn.topAnchor.constraint(equalTo: addItemBtn.topAnchor, constant: 50).isActive = true
        listItemBtn.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 100).isActive = true
        listItemBtn.heightAnchor.constraint(equalToConstant: 25).isActive = true
        listItemBtn.backgroundColor = UIColor.black
        listItemBtn.layer.cornerRadius = 5
        listItemBtn.layer.masksToBounds = true
        listItemBtn.setTitleColor(UIColor.white, for: .normal)
        
        listItemBtn.addTarget(self, action: #selector(listBtnPressed), for: .touchUpInside)
        
        
        view.addSubview(deleteItemBtn)
        deleteItemBtn.translatesAutoresizingMaskIntoConstraints = false
        deleteItemBtn.setTitle("Delete Item", for: .normal)
        deleteItemBtn.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5).isActive = true
        deleteItemBtn.topAnchor.constraint(equalTo: listItemBtn.topAnchor, constant: 50).isActive = true
        deleteItemBtn.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 100).isActive = true
        listItemBtn.heightAnchor.constraint(equalToConstant: 25).isActive = true
        deleteItemBtn.backgroundColor = UIColor.black
        deleteItemBtn.layer.cornerRadius = 5
        deleteItemBtn.layer.masksToBounds = true
        deleteItemBtn.setTitleColor(UIColor.white, for: .normal)
        
        deleteItemBtn.addTarget(self, action: #selector(deleteBtnPressed), for: .touchUpInside)
        
        view.addSubview(searchItemBtn)
        searchItemBtn.translatesAutoresizingMaskIntoConstraints = false
        searchItemBtn.setTitle("Search Item", for: .normal)
        searchItemBtn.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5).isActive = true
        searchItemBtn.topAnchor.constraint(equalTo: deleteItemBtn.topAnchor, constant: 50).isActive = true
        searchItemBtn.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 100).isActive = true
        searchItemBtn.heightAnchor.constraint(equalToConstant: 25).isActive = true
        searchItemBtn.backgroundColor = UIColor.black
        searchItemBtn.layer.cornerRadius = 5
        searchItemBtn.layer.masksToBounds = true
        searchItemBtn.setTitleColor(UIColor.white, for: .normal)
        
        searchItemBtn.addTarget(self, action: #selector(searchBtnPressed), for: .touchUpInside)
        
      
    }
    
    func addButtonPressed() {
        let addItemController = AddItemController()
//        addItemController.wishList = wishList
        self.present(addItemController, animated:true, completion:nil)
    }
    
    func listBtnPressed() {
        let listItemController = ListItemController()
//        listItemController.wishList = wishList
        self.present(listItemController, animated:true, completion:nil)
    }
    
    func deleteBtnPressed() {
        let deleteItemController = DeleteItemController()
        self.present(deleteItemController, animated: true, completion: nil)
    }
    
    func searchBtnPressed() {
        let searchItemController = SearchItemController()
        self.present(searchItemController, animated: true, completion: nil)
    }


}

