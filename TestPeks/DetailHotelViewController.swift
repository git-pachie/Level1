//
//  DetailHotelViewController.swift
//  TestPeks
//
//  Created by pachie on 22/09/2019.
//  Copyright © 2019 pachie. All rights reserved.
//

import UIKit

class DetailHotelViewController: UIViewController {

    @IBOutlet weak var labelName: UILabel!
    
    @IBOutlet weak var labelAddress: UILabel!
    
    @IBOutlet weak var labelPrice: UILabel!
    
    @IBOutlet weak var labelDescription: UILabel!
    
    var selectedHotel = HotelClass()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelName.text = selectedHotel.name
        labelAddress.text = selectedHotel.address
        labelPrice.text = String(selectedHotel.price)
        labelDescription.text = selectedHotel.description
        
        
    }
    
    
    @IBAction func btnCloseClick(_ sender: Any) {
        
        
        self.dismiss(animated: true, completion: nil)
        
    }
    


}
