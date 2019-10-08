//
//  ViewController.swift
//  pirozhki
//
//  Created by Evgeniy Esterkin on 08/10/2019.
//  Copyright © 2019 Evgeniy Esterkin. All rights reserved.
//

import UIKit
 
class ViewController: UIViewController {
    
    var clickCount=0
 
    
    @IBOutlet weak var labelName: UILabel!
    
   
    @IBAction func buttonClick(_ sender: UIButton) {
        
        clickCount+=1
        labelName.text="Ты нажал кнопку \(clickCount) раз"
    }
    
 
}
