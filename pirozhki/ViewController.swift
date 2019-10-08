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
        let newConstraint = NSLayoutConstraint(item: redView, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: self.view.frame.width/2)
        
        UIView.animate(withDuration: 2.0, delay: 0.0, options: .curveEaseOut , animations: {
                self.view.removeConstraint(self.leadingConstraint)
                self.view.addConstraint(newConstraint)
                self.view.layoutIfNeeded()
        }, completion: nil)
        leadingConstraint = newConstraint

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
