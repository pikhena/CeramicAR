//
//  CubeStoryViewController.swift
//  CeramicAR
//
//  Created by Priscilla Nini Ikhena on 28/01/2021.
//

import Foundation

import UIKit
class CubeStoryViewController: UIViewController {
    let viewControllerInstance = ViewController()
    @IBOutlet var viewPane: UIView!
    @IBOutlet weak var cubedetails: UILabel!
    
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
        cubedetails.text = "This cube represents the blossoming into womanhood, and how in the process, a girl’s heart, body and soul form a union, as she becomes a woman."
    }
    
    else if cubeNumber == "Box2"{
        cubedetails.text = "This cube represents the Black Lives Matter movement around the world, and the pleas and cries by black people and their allies, against police brutality and all racially motivated violence against black people. "
        
        
    }
    
    else if cubeNumber == "Box3"{
        cubedetails.text = "This cube represents the process of growing into motherhood, without losing the wild, party-loving young woman inside, but instead bringing that fun aspect into motherhood. It also explores the frustrating feelings that come with experiencing the new age fake world of social media. Fuck the likes."
    }
    
    else if cubeNumber == "Box4"{
        cubedetails.text = "This cube represents sentiments of people protesting and in some cases, risking their lives to do so. However, do these governments actually hear us? Or do we often have to burn it all in order to get their attention?"
    }

    else if cubeNumber == "Box5"{
        cubedetails.text = "This cube represents the history of Carina’s ancestors, and how it intersects with South Africa’s history. The side of the cube with a red line drawn across a face, is a reference to Verwoerd, a Dutch man from the Netherlands who started apatheid in South Africa. White arrogance and greed brought South Africa so much despair. This cube conveys the message that although we may not be completely rid of the hate, the fight for freedom and equality will eventually win."
    }
    
    else if cubeNumber == "Box6"{
        cubedetails.text = "This cube represents a reverence for mother earth, and the spreading seed of knowledge that lovingly touches people from different tribes, beliefs and ages, and inspires them to come together and grow, while learning how to better preserve and protect our planet."
    }
    
    else if cubeNumber == "Box7"{
        cubedetails.text = "This cube represents the process of wrapping memories in layers. A sarong is a piece of material used to tie babies onto the back of their moms. It is also used as a table cloth in some cases, and as picnic blankets. It is a piece of material naturally connected to a sense of joy and comfort. It also conveys how just as a sarong, a woman’s presence and company could provide similar comfort, but should never be mixed up with an object that one can abuse. This cube speaks against sexual abuse, and the additional trauma victims experience from being silenced."
    }
    
    else if cubeNumber == "Box8"{
        cubedetails.text = "This cube represents the opening up and unzipping of one’s mind and heart to unleash memories held dear. On this cube, we see memories from Carina’s life - such as a thunderstorm over Johannesburg, a sarong, a chair she had a love at first sight experience with but could not afford, and so forth. Ultimately, the meaning behind this cube is that even in the most bleak environments, or in moments we desire something we feel we cannot have, there is always a source of beauty as long as we stay dreaming. Keeping in mind that often, we dream of one outcome, and life surprises us with much more."
    }
}


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

