//
//  FirstViewController.swift
//  CeramicAR
//
//  Created by Priscilla Nini Ikhena on 29/01/2021.
//



import Foundation
import UIKit
class FirstViewController: UIViewController {
    
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstIcon: UIImageView!
    
    @IBOutlet weak var firstDesc: UILabel!
    
    @IBOutlet weak var laptopImage: UIImageView!
    
    @IBOutlet weak var nextFirst: UIButton!
    
    
    @IBOutlet weak var skipFirst: UIButton!
    
    
    @IBAction func skipFirstAction(_ sender: Any) {
    }
    
    @IBOutlet weak var viewPaneFirst: UIView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        nextFirst.layer.borderWidth = 1.0 / UIScreen.main.nativeScale
        nextFirst.layer.borderColor = UIColor.white.cgColor
        nextFirst.contentEdgeInsets = UIEdgeInsets(top: 20, left: 0, bottom: 20, right: 0)
        
        
        skipFirst.layer.borderWidth = 1.0 / UIScreen.main.nativeScale
        skipFirst.layer.borderColor = UIColor.white.cgColor
        skipFirst.contentEdgeInsets = UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)
       
        
        
        viewPaneFirst.backgroundColor = UIColor.black
      
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
    }
    
}
