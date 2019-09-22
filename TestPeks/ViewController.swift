//
//  ViewController.swift
//  TestPeks
//
//  Created by pachie on 22/09/2019.
//  Copyright © 2019 pachie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtAddress: UITextField!
    @IBOutlet weak var txtPrice: UITextField!
    
    var myArrayHotel = [HotelClass]()
    
    
    //var arrayString = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let hotel1 = HotelClass()
        hotel1.name = "AQueen"
        hotel1.address = "Baliester"
        hotel1.price = 120
        
        myArrayHotel.append(hotel1)
        
        let hotel2 = HotelClass()
        hotel2.name = "Hotel81"
        hotel2.address = "Bugis"
        hotel2.price = 40
        
        myArrayHotel.append(hotel2)
        
        
        let hotel3 = HotelClass()
        hotel3.name = "Sembawang"
        hotel3.address = "Blk 359"
        hotel3.price = 0
        
        myArrayHotel.append(hotel3)
        
    }

    
    @IBAction func btnAddClick(_ sender: Any) {
        
        
        
        
    }
    
    
    
    @IBAction func btnPrintClick(_ sender: Any) {
    
        print("------------------->")
        
        for item in myArrayHotel {
            print("Hotel name is \(item.name) \(item.address) \(item.address)")
        }
    
    }
    
}

