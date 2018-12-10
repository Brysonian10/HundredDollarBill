//
//  ViewController.swift
//  HundredDollarBill
//
//  Created by Spaulding, Bryson on 12/6/18.
//  Copyright © 2018 Bryson Spaulding. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipes(_:)))
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipes(_:)))
        
        leftSwipe.direction = .left
        rightSwipe.direction = .right
        
        view.addGestureRecognizer(leftSwipe)
        view.addGestureRecognizer(rightSwipe)
    }
    
    @objc func handleSwipes(_ sender:UISwipeGestureRecognizer)
    {
        if (sender.direction == .left)
        {
            print("Swipe Left")
            
            // show the view from the right side
        }
        
        if (sender.direction == .right)
        {
            print("Swipe Right")
            
            // show the view from the left side
        }
        
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        
        let resultViewController = storyBoard.instantiateViewController(withIdentifier: "Bill")
        
        self.present(resultViewController, animated:true, completion:nil)
        


    }
}
