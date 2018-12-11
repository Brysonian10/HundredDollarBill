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
        let upSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipes(_:)))
        let downSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipes(_:)))

        leftSwipe.direction = .left
        rightSwipe.direction = .right
        upSwipe.direction = .up
        downSwipe.direction = .down

        view.addGestureRecognizer(leftSwipe)
        view.addGestureRecognizer(rightSwipe)
        view.addGestureRecognizer(upSwipe)
        view.addGestureRecognizer(downSwipe)
    }

    @objc func handleSwipes(_ sender:UISwipeGestureRecognizer)
    {
        if (sender.direction == .left)
        {
            print("Swipe Left")

            // moves it left
        }

        if (sender.direction == .right)
        {
            print("Swipe Right")

            // moves it right
        }

        if (sender.direction == .up)
        {
            print("Swipe Up")

            //moves it up
        }

        if (sender.direction == .down)
        {
            print("Swipe Down")

            //moves it down
        }


        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)

        let resultViewController = storyBoard.instantiateViewController(withIdentifier: "Bill")

        self.present(resultViewController, animated:true, completion:nil)

    }
    
   private func animate()
    {
        //I want and If statement, if touching, then move hundred dollar bill to finger position. If at least 50 pixels from center of screen, slide off of screen, else, slide back to the center of the screen.
    }
    
    private func counter()
    {
        //for every bill thrown away the counter label will go up a single number. This allows the user to know how many dollars they have wasted times 100.
    }
    
    
}
