//
//  ThenViewController.swift
//  CeramicAR
//
//  Created by Priscilla Nini Ikhena on 29/01/2021.
//

import Foundation
import UIKit


class ThenViewController: UIViewController {
    
    
    @IBOutlet weak var thenLabel: UILabel!
    @IBOutlet weak var thenTitle: UILabel!
    @IBOutlet weak var thenImage: UIImageView!
    @IBOutlet weak var phoneImage: UIImageView!
  
    @IBOutlet weak var viewThen: UIView!
    
    @IBOutlet weak var getStartedButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        getStartedButton.layer.borderWidth = 1.0 / UIScreen.main.nativeScale
        getStartedButton.layer.borderColor = UIColor.white.cgColor
        getStartedButton.contentEdgeInsets = UIEdgeInsets(top: 20, left: 0, bottom: 20, right: 0)
        
        viewThen.backgroundColor = UIColor.black
      
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
    }
}
