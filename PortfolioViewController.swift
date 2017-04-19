//
//  PortfolioViewController.swift
//  HermeticCo
//
//  Created by CARLOS DELGADILLO on 11/8/16.
//  Copyright © 2016 CARLOS Calculator. All rights reserved.
//

import UIKit


class PortfolioViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var cellCollectionView: UICollectionView!
    
    @IBOutlet weak var portfolioLabel: UILabel!
    

    
    
    let photos = [UIImage(named: "babies"), UIImage(named: "crystal"), UIImage(named: "DRsunset"), UIImage(named: "DRboy"), UIImage(named: "DisneyFerris"), UIImage(named: "disneyTrolley"),  UIImage(named: "DisneySunset"), UIImage(named: "boat"), UIImage(named: "hollywoodterror"), UIImage(named: "disneyEureka"), UIImage(named: "momBoy"), UIImage(named: "DRlady"), UIImage(named: "DRLadyLaying"), UIImage(named: "DRbike"), UIImage(named: "DRguy"), UIImage(named: "DRpirate"), UIImage(named: "DRpirateParrot"), UIImage(named: "ParkGuellTP")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        7
        portfolioLabel.layer.borderWidth = 1
        portfolioLabel.layer.cornerRadius = 7
        
    
 

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.photos.count
    }
    
  
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell = cellCollectionView.dequeueReusableCell(withReuseIdentifier: "imageCell", for: indexPath) as! CollectionViewCell
    
        cell.imageView?.image = self.photos[indexPath.row]
        
        
        return cell
    }
    
    
    

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
  
        self.performSegue(withIdentifier: "showImage", sender: self)
    
    }
    
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (segue.identifier == "showImage")
        {
            let indexPaths = self.cellCollectionView.indexPathsForSelectedItems!
            let indexPath = indexPaths[0] as IndexPath
            
            let vc = segue.destination as! LargeImageViewController
            
            vc.image = self.photos[indexPath.row]!
            
        }
    
    }

}
    
