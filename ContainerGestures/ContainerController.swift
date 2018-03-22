//
//  ContainerController.swift
//  ContainerGestures
//
//  Created by Marcelo on 21/03/18.
//  Copyright © 2018 Marcelo. All rights reserved.
//

import UIKit

class ContainerController: UIViewController {

    var swipeGesture = UISwipeGestureRecognizer()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let directions: [UISwipeGestureRecognizerDirection] = [.up, .down, .right, .left]
        for direction in directions {
            swipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(swipwView(_:)))
            view.addGestureRecognizer(swipeGesture)
            swipeGesture.direction = direction
            view.isUserInteractionEnabled = true
            view.isMultipleTouchEnabled = true
        }
    }

    @objc func swipwView(_ sender : UISwipeGestureRecognizer){
        UIView.animate(withDuration: 1.0) {
            
        print("----@@@@@@@@@-----   swipe detected -> \(sender.direction)")
            
            

//            self.viewSwipe.layoutIfNeeded()
//            self.viewSwipe.setNeedsDisplay()
        }
    }

}
