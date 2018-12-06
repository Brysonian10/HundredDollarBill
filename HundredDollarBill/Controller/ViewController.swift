//
//  ViewController.swift
//  HundredDollarBill
//
//  Created by Spaulding, Bryson on 12/6/18.
//  Copyright © 2018 Bryson Spaulding. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Image.autoresizingMask = UIView.AutoresizingMask(rawValue: UIView.AutoresizingMask.flexibleBottomMargin.rawValue | UIView.AutoresizingMask.flexibleHeight.rawValue | UIView.AutoresizingMask.flexibleRightMargin.rawValue | UIView.AutoresizingMask.flexibleLeftMargin.rawValue | UIView.AutoresizingMask.flexibleTopMargin.rawValue | UIView.AutoresizingMask.flexibleWidth.rawValue)
        Image.contentMode = UIView.ContentMode.scaleAspectFit
        // Do any additional setup after loading the view, typically from a nib.
    }


}

