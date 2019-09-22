//
//  TestTableViewController.swift
//  TestPeks
//
//  Created by pachie on 22/09/2019.
//  Copyright © 2019 pachie. All rights reserved.
//

import UIKit

class TestTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var myArrayHotel2 = [HotelClass]()
    var selectedHotel = HotelClass()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myArrayHotel2.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "testcell", for: indexPath)
        
        print("current indexpath row \(indexPath.row)")
        
        cell.textLabel?.text = myArrayHotel2[indexPath.row].name
        cell.detailTextLabel?.text = myArrayHotel2[indexPath.row].address
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        
        selectedHotel = myArrayHotel2[indexPath.row]
        
        performSegue(withIdentifier: "showdetail", sender: nil)
        

        print("My selected hotel is \(selectedHotel.name)")

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        let desVC = segue.destination as! DetailHotelViewController
        
        desVC.selectedHotel = selectedHotel
    
    
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        let hotel1 = HotelClass()
        hotel1.name = "AQueen"
        hotel1.address = "Baliester"
        hotel1.price = 120
        
        myArrayHotel2.append(hotel1)
        
        let hotel2 = HotelClass()
        hotel2.name = "Hotel81"
        hotel2.address = "Bugis"
        hotel2.price = 40
        
        myArrayHotel2.append(hotel2)
        
        
        let hotel3 = HotelClass()
        hotel3.name = "Sembawang"
        hotel3.address = "Blk 359"
        hotel3.price = 0
        
        myArrayHotel2.append(hotel3)
        
        
        let hotel4 = HotelClass()
        hotel4.name = "Jalan"
        hotel4.address = "Jalan Rajah sagad, Pawis"
        hotel4.price = 0
        
        myArrayHotel2.append(hotel4)
        
    }
    

    

}
