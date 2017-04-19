//
//  LargeImageViewController.swift
//  HermeticCo
//
//  Created by CARLOS DELGADILLO on 11/11/16.
//  Copyright © 2016 CARLOS Calculator. All rights reserved.
//

import UIKit

class LargeImageViewController: UIViewController {

    
    @IBOutlet weak var largeImage: UIImageView!
    
    @IBOutlet weak var backButton: UIButton!
    
    
    var image = UIImage()

    override func viewDidLoad() {
        super.viewDidLoad()

       self.largeImage.image = self.image
        
        backButton.layer.borderWidth = 1
        backButton.layer.cornerRadius = 9
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func dissmissButton(_ sender: UIButton) {
        
        
        self.dismiss(animated: true, completion: nil)
    
    }

}
