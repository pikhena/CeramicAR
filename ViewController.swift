//
//  ViewController.swift
//  CeramicAR
//
//  Created by Priscilla Nini Ikhena on 28/01/2021.
//

import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate {
    
    
    var videoArray = [SKVideoNode]() //array of all video nodes
    var planeArray = [SCNNode]() //array of all plane nodes
    var anchorArray = [ARImageAnchor]() //array of all ARImageAnchors
    static var readButtonCube = String()
    var rendercount = 0
    

 
    @IBOutlet weak var readButtonOutlet: UIButton!
    @IBOutlet var sceneView: ARSCNView!
    @IBOutlet var viewPaneView: UIView!
    @IBOutlet weak var instructionLabel: UILabel!
    @IBOutlet weak var secondInstruction: UILabel!
    
    
    @IBAction func readButtonAction(_ sender: Any) {
        self.performSegue (withIdentifier: "goToCubeStory", sender: self)
    }
    
    
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Additional setup after loading the view.
        sceneView.delegate = self
        sceneView.autoenablesDefaultLighting = true
        
        //creatingBordersAndUIForButtons
        readButtonOutlet.layer.borderWidth = 1.0 / UIScreen.main.nativeScale
        readButtonOutlet.layer.borderColor = UIColor.white.cgColor
        readButtonOutlet.contentEdgeInsets = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
        
    }
    
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //Create a session configuration
    let configuration = ARWorldTrackingConfiguration()
    let referenceImages = ARReferenceImage.referenceImages(inGroupNamed: "AR Resources", bundle: nil)
    configuration.detectionImages = referenceImages
    
        //Run the view's session
    sceneView.session.run(configuration)

    
    //Hide the other buttons initially
    hideReadMoreButton()
    hideSecondInstruction()
        
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }
    
    //In this function, the image gets detected, and then the function that launches the video gets called.
  
    
    func renderer(_ renderer: SCNSceneRenderer, didAdd node: SCNNode, for anchor: ARAnchor) {
            
            hideSecondInstruction()
            //Checks that we have detected an ARImageAnchor
            guard let imageAnchor = anchor as? ARImageAnchor else {return}
            
            if !anchorArray.isEmpty {
                print(anchorArray[0])
                for anchor in anchorArray {
                    
                    sceneView.session.remove(anchor: anchor)

                }
                anchorArray.removeAll()
            }
           
            
            if !videoArray.isEmpty {
                  for videoNode in videoArray {
                    videoNode.removeFromParent()

                }
                
                videoArray.removeAll()
        }
        
            anchorArray.append(imageAnchor)
            let referenceImage = imageAnchor.referenceImage
            let referenceImageName = String(referenceImage.name!)
            ViewController.readButtonCube = referenceImageName
            
        
        
            //find our video file
            var videoNode = SKVideoNode()
        if referenceImageName == "Box1"{
            videoNode = SKVideoNode(fileNamed: "Box1Trimmed.mov")
        }
        
        else if referenceImageName == "Box2"{
            videoNode = SKVideoNode(fileNamed: "Box2Trimmed.mov")
        }
        
        else if referenceImageName == "Box4"{
            videoNode = SKVideoNode(fileNamed: "Box4Trimmed.mov")
        }
        
        else if referenceImageName == "Box6"{
            videoNode = SKVideoNode(fileNamed: "Box6Trimmed.mov")
        }
        
        else if referenceImageName == "Box7"{
            videoNode = SKVideoNode(fileNamed: "Box7Trimmed.mov")
        }
        
        else if referenceImageName == "Box3"{
            videoNode = SKVideoNode(fileNamed: "Box3Trimmed.mov")
        }
        
        else if referenceImageName == "Box5"{
            videoNode = SKVideoNode(fileNamed: "Box5Trimmed.mov")
        }
        
        else if referenceImageName == "Box8"{
            videoNode = SKVideoNode(fileNamed: "Box8Trimmed.mov")
        }
        
            videoNode.play()
            // setting the size of the video scene
            let videoScene = SKScene(size: CGSize(width: 480, height: 360))
            // center video to the size of our video scene
            videoNode.position = CGPoint(x: videoScene.size.width / 2, y: videoScene.size.height / 2)
            // invert video so it does not look upside down
            videoNode.yScale = -1.0
            // add the video to scene
            videoScene.addChild(videoNode)
            // add the video to videoArray
            videoArray.append(videoNode)
            
            
    
        
            // creating a plane that has the same real world height and width as our detected image
            let plane = SCNPlane(width: imageAnchor.referenceImage.physicalSize.width, height: imageAnchor.referenceImage.physicalSize.height)
            // set the first materials content to be the video scene
            plane.firstMaterial?.diffuse.contents = videoScene
            // create a node out of the plane
            let planeNode = SCNNode(geometry: plane)
            // since the created node will be vertical, rotate it along the x axis to have it be horizontal or parallel to our detected image
            planeNode.eulerAngles.x = -Float.pi / 2
            // finally add the plane node (which contains the video node) to the added node
            node.addChildNode(planeNode)
            // add the plane to planeArray for Cancel button
            planeArray.append(planeNode)
        
        
        //after video has been overlayed, display the buttons for the user to interact with.
                DispatchQueue.main.async {
                      self.instructionLabel.isHidden = true
              }
        
               showReadMoreButton()
        if rendercount == 0{
               showSecondInstruction()
        }
        rendercount = rendercount + 1
          
                
        
       
      
        }
    
    //function to display read more button

      func showReadMoreButton() {

          DispatchQueue.main.async {
             
              self.readButtonOutlet.isHidden = false
              
          }

      }
      
    // function to hide read more button
        func hideReadMoreButton(){
            DispatchQueue.main.async {
               
                self.readButtonOutlet.isHidden = true
               
            }
        }
        
        // function to hide second instruction
            func hideSecondInstruction(){
                DispatchQueue.main.async {
                   
                    self.secondInstruction.isHidden = true
                   
                }
            }
        
        //function to display second instruction

          func showSecondInstruction() {

            DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                self.secondInstruction.isHidden = false
            }
            hideSecondInstruction()

          }
    
    

   
  
}
