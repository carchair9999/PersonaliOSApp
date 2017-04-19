//
//  SecondViewController.swift
//  HermeticCo
//
//  Created by CARLOS DELGADILLO on 11/8/16.
//  Copyright © 2016 CARLOS Calculator. All rights reserved.
//

import UIKit

class ResumeSecondViewController: UIViewController {

    @IBOutlet weak var resumeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
     
        
        resumeLabel.layer.borderWidth = 1
        resumeLabel.layer.cornerRadius = 7
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

