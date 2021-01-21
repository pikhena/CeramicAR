//
//  welcomeViewController.swift
//  Ceramic AR
//
//  Created by Priscilla Ikhena on 13/01/2021.
//  Copyright (c) 2021 Onivie Enterprises. All rights reserved.
//

import Foundation
import UIKit

class welcomeViewController: UIViewController {
 
   
    @IBOutlet var UIView: UIView!
    @IBOutlet weak var beginExperienceButton: UIButton!
    
    @IBAction func beginExperienceButton(_ sender: Any) {
        self.performSegue(withIdentifier: "goToExpPage", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
       
        super.viewWillAppear(animated)
        
        
        //creatingBordersAndUIForButtons
        beginExperienceButton.layer.borderWidth = 1.0 / UIScreen.main.nativeScale
        beginExperienceButton.layer.borderColor = UIColor.white.cgColor
        beginExperienceButton.contentEdgeInsets = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
}
