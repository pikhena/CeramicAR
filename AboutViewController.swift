//
//  AboutViewController.swift
//  CeramicAR
//
//  Created by Priscilla Nini Ikhena on 28/01/2021.
//

import Foundation
import UIKit
class AboutViewController: UIViewController {
    
    
    
    
 
    @IBOutlet weak var viewPaneAbout: UIView!
    @IBOutlet weak var aboutIcon: UIImageView!
    @IBOutlet weak var aboutTitle: UILabel!
    @IBOutlet weak var aboutDesc: UILabel!
    
    @IBOutlet weak var nextButton: UIButton!
    
   
    @IBOutlet weak var skipButton: UIButton!
    
    
    
   
    
    @IBAction func skipAction(_ sender: Any) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        

        nextButton.layer.borderWidth = 1.0 / UIScreen.main.nativeScale
        nextButton.layer.borderColor = UIColor.white.cgColor
        nextButton.contentEdgeInsets = UIEdgeInsets(top: 20, left: 0, bottom: 20, right: 0)
        
        
        skipButton.layer.borderWidth = 1.0 / UIScreen.main.nativeScale
        skipButton.layer.borderColor = UIColor.white.cgColor
        skipButton.contentEdgeInsets = UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)
       
        
        
        viewPaneAbout.backgroundColor = UIColor.black
        
      
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
    }
}
