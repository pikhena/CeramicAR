//
//  CubeStory.swift
//  Ceramic AR
//
//  Created by Priscilla Ikhena on 13/01/2021.
//  Copyright (c) 2021 Onivie Enterprises. All rights reserved.
//


import Foundation
import UIKit
class CubeStoryViewController: UIViewController {
    let viewControllerInstance = ViewController()
   
    @IBOutlet weak var cubedetails: UILabel!
    
    @IBOutlet var viewPane: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
override func viewWillAppear(_ animated: Bool) {
   
    super.viewWillAppear(animated)
    //code for the presentation of the cube details
    cubedetails.numberOfLines = 200
    cubedetails.textColor = UIColor.white
    viewPane.backgroundColor = UIColor.black
    viewPane.alpha = 0.5
    
    //Gets the right Cube that is being viewed by the user, and presents the right information for the cube.
    let cubeNumber =  ViewController.readButtonCube


    if cubeNumber == "Box1" {
        cubedetails.text = "Cube ONE is about Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce pretium scelerisque metus, porta lacinia nisi. Vivamus a finibus quam, a bibendum ipsum. Phasellus pharetra volutpat eros, eu bibendum ipsum rhoncus non."
    }
    
    else if cubeNumber == "Box2"{
        cubedetails.text = "Cube TWO is about Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce pretium scelerisque metus, porta lacinia nisi. Vivamus a finibus quam, a bibendum ipsum. Phasellus pharetra volutpat eros, eu bibendum ipsum rhoncus non."
        
        
    }
    
    else if cubeNumber == "Box3"{
        cubedetails.text = "Cube THREE is about Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce pretium scelerisque metus, porta lacinia nisi. Vivamus a finibus quam, a bibendum ipsum. Phasellus pharetra volutpat eros, eu bibendum ipsum rhoncus non."
    }
    
    else if cubeNumber == "Box4"{
        cubedetails.text = "Cube FOUR is about Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce pretium scelerisque metus, porta lacinia nisi. Vivamus a finibus quam, a bibendum ipsum. Phasellus pharetra volutpat eros, eu bibendum ipsum rhoncus non."
    }

    else if cubeNumber == "Box5"{
        cubedetails.text = "Cube FIVE is about Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce pretium scelerisque metus, porta lacinia nisi. Vivamus a finibus quam, a bibendum ipsum. Phasellus pharetra volutpat eros, eu bibendum ipsum rhoncus non."
    }
    
    else if cubeNumber == "Box6"{
        cubedetails.text = "Cube SIX is about Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce pretium scelerisque metus, porta lacinia nisi. Vivamus a finibus quam, a bibendum ipsum. Phasellus pharetra volutpat eros, eu bibendum ipsum rhoncus non."
    }
    
    else if cubeNumber == "Box7"{
        cubedetails.text = "Cube SEVEN is about Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce pretium scelerisque metus, porta lacinia nisi. Vivamus a finibus quam, a bibendum ipsum. Phasellus pharetra volutpat eros, eu bibendum ipsum rhoncus non."
    }
    
    else if cubeNumber == "Box8"{
        cubedetails.text = "Cube EIGHT is about Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce pretium scelerisque metus, porta lacinia nisi. Vivamus a finibus quam, a bibendum ipsum. Phasellus pharetra volutpat eros, eu bibendum ipsum rhoncus non."
    }
}


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
