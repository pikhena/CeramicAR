//
//  WelcomeViewController.swift
//  CeramicAR
//
//  Created by Priscilla Nini Ikhena on 28/01/2021.
//

import Foundation
import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet weak var welcomeLabel: UILabel!
    
    
    @IBOutlet weak var skipToExperienceButton: UIButton!
    
    @IBOutlet weak var howItWorksButton: UIButton!
    
    @IBAction func skipToExperienceAction(_ sender: Any) {
        
    }
    
    @IBOutlet weak var viewPane: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //creatingBordersAndUIForButtons
        
        howItWorksButton.layer.borderWidth = 1.0 / UIScreen.main.nativeScale
        howItWorksButton.layer.borderColor = UIColor.white.cgColor
        howItWorksButton.contentEdgeInsets = UIEdgeInsets(top: 20, left: 0, bottom: 20, right: 0)
        
        
        skipToExperienceButton.layer.borderWidth = 1.0 / UIScreen.main.nativeScale
        skipToExperienceButton.layer.borderColor = UIColor.white.cgColor
        skipToExperienceButton.contentEdgeInsets = UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)
       
        
        
        viewPane.backgroundColor = UIColor.black
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
    }
}
