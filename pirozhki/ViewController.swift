//
//  ViewController.swift
//  pirozhki
//
//  Created by Evgeniy Esterkin on 08/10/2019.
//  Copyright © 2019 Evgeniy Esterkin. All rights reserved.
//

import UIKit
 
class ViewController: UIViewController {
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var button: UIButton!
    
    var clickCount = 0
    var isRightPosition = false
    
    @IBAction func buttonClick(_ sender: UIButton) {
        clickCount += 1
        labelName.text="Ты съел \(clickCount) пирожков"
    }
    
    @IBAction func moveButtonPressed(_ sender: Any) {
        if isRightPosition {
            animate(value: 0, rotate: 0)
        } else {
            animate(value: 300, rotate: CGFloat(Double.pi / 2))
        }
        isRightPosition = !isRightPosition
    }

    func animate(value: CGFloat, rotate: CGFloat) {
        UIView.animate(withDuration: 2.0, delay: 0.0, options: .curveEaseOut, animations: {
            self.leadingConstraint.constant = value
            self.redView.transform = CGAffineTransform(rotationAngle: rotate)
            self.view.layoutIfNeeded()
            self.button.isEnabled = false
        }, completion: { _ in
            self.button.isEnabled = true
        })
    }
    
    //1) сделать измение цвета на 1 из 7 цветов радуги, подряд.
    //2) Сделать секундомер минуты, секунды. Кнопка старт/стоп, сбросить
}
