//
//  ViewController.swift
//  pirozhki
//
//  Created by Evgeniy Esterkin on 08/10/2019.
//  Copyright © 2019 Evgeniy Esterkin. All rights reserved.
//

import UIKit
 
class ViewController: UIViewController {
    @IBAction func moveButtonPressed(_ sender: Any) {
       leadingConstraint.constant = 300
        
        UIView.animate(withDuration: 2.0,
                       delay: 0.0,
                       options: .curveEaseOut ,
                       animations: {
                        self.redView.transform = CGAffineTransform (rotationAngle: 90)
              
                
                self.view.layoutIfNeeded()
        }, completion: nil)
        

    }
    
    
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    
    
    var clickCount=0
 
    
    @IBOutlet weak var labelName: UILabel!
    
    
    @IBAction func buttonClick(_ sender: UIButton) {
        

        clickCount+=1
        labelName.text="Ты съел \(clickCount) пирожков"
    }
    
 

}
