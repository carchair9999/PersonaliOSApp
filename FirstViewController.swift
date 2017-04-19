//
//  FirstViewController.swift
//  HermeticCo
//
//  Created by CARLOS DELGADILLO on 11/8/16.
//  Copyright © 2016 CARLOS Calculator. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController  {


    @IBOutlet weak var aboutText: UITextView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        aboutText.layer.cornerRadius = 4
        
        
        nameLabel.layer.borderWidth = 1
        nameLabel.layer.cornerRadius = 7
        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

