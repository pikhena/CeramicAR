//
//  ViewController.swift
//  Dicee
//
//  Created by Priscilla Ikhena on 13/01/2021.
//

import UIKit
import SceneKit
import ARKit


class ViewController: UIViewController, ARSCNViewDelegate {
    
    var videoArray = [SKVideoNode]() //array of all video nodes
    var planeArray = [SCNNode]() //array of all plane nodes
    var anchorArray = [ARImageAnchor]() //array of all ARImageAnchors
    var readButtonCube = String()
    
    
    let screenWidth  = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
  
    
    @IBOutlet var UIView: UIView!
    @IBOutlet weak var sceneView: ARSCNView!
    @IBOutlet weak var instructionLabel: UILabel!
    @IBOutlet weak var readButtonOutlet: UIButton!
    @IBOutlet weak var cancelButtonOutlet: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        sceneView.delegate = self
        sceneView.autoenablesDefaultLighting = true
        
        //creatingBordersAndUIForButtons
        readButtonOutlet.layer.borderWidth = 1.0 / UIScreen.main.nativeScale
        readButtonOutlet.layer.borderColor = UIColor.white.cgColor
        readButtonOutlet.contentEdgeInsets = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
        
        cancelButtonOutlet.layer.borderWidth = 1.0 / UIScreen.main.nativeScale
        cancelButtonOutlet.layer.borderColor = UIColor.white.cgColor
        cancelButtonOutlet.contentEdgeInsets = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
            //Create a session configuration
        let configuration = ARWorldTrackingConfiguration()
        let referenceImages = ARReferenceImage.referenceImages(inGroupNamed: "AR Resources", bundle: nil)
        configuration.detectionImages = referenceImages
        
            //Run the view's session
        sceneView.session.run(configuration)
  
        
            //Hide all buttons initially
        hideButtons()
     
        
        }
    

    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        //Pause the view's session
        sceneView.session.pause()
    }
    
    
    //In this function, the image gets detected, and then the function that launches the video gets called.
    
    
    func renderer(_ renderer: SCNSceneRenderer, didAdd node: SCNNode, for anchor: ARAnchor) {
            
            //Checks that we have detected an ARImageAnchor
            guard let imageAnchor = anchor as? ARImageAnchor else {return}
            anchorArray.append(imageAnchor)
            let referenceImage = imageAnchor.referenceImage
            let referenceImageName = String(referenceImage.name!)
            readButtonCube = referenceImageName
        
        
            //find our video file
            //**add conditional statements here on what video to play based on the
            var videoNode = SKVideoNode()
        if referenceImageName == "Box1"{
            videoNode = SKVideoNode(fileNamed: "Box1.MOV")
        }
        
        else if referenceImageName == "Box2"{
            videoNode = SKVideoNode(fileNamed: "Box2.MOV")
        }
        
        else if referenceImageName == "Box4"{
            videoNode = SKVideoNode(fileNamed: "Box4.MOV")
        }
        
        else if referenceImageName == "Box6"{
            videoNode = SKVideoNode(fileNamed: "Box6b.MOV")
        }
        
        else if referenceImageName == "Box7"{
            videoNode = SKVideoNode(fileNamed: "Box7.MOV")
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
            // add the video to videoArray for Cancel button
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
        
               showButtons()
        
        }
    
    
    
    //the Cancel button clears out all videos and all anchors, so that the session can repeatedly launch videos without having to quit the app.
    //**Need to make this Cancel button work well.
    
    @IBAction func cancelButton(_ sender: Any) {
        //the
        
        if !planeArray.isEmpty {
            for planeNode in planeArray {
                planeNode.removeFromParentNode()
               
              //  videoNode.removeAllActions()
            }
        }
        
        if !anchorArray.isEmpty {
            for anchor in anchorArray {
                sceneView.session.remove(anchor: anchor)
            }
            
       
        }
        
        if !videoArray.isEmpty {
            for videoNode in videoArray {
                videoNode.removeFromParent()
            }
        }
        
       hideButtons()
        DispatchQueue.main.async {
               self.instructionLabel.isHidden = false
        }
        
        
    }
    
    
    
    //if Read/Cubestory is pressed, we want to overlay the video with information about the memory cube.
    
    
    @IBAction func readButton(_ sender: Any) {
        if (readButtonCube == "Box1") {
            print("Box1 does...")
        }
        
        else if (readButtonCube == "Box2") {
            print("Box2 does...")
        }
        
        else if (readButtonCube == "Box3") {
            print("Box3 does...")
        }
        
        else if (readButtonCube == "Box4") {
            print("Box4 does...")
        }
        
        else if (readButtonCube == "Box5") {
            print("Box5 does...")
        }
        
        else if (readButtonCube == "Box6") {
            print("Box6 does...")
        }
        
        else if (readButtonCube == "Box7") {
            print("Box7 does...")
        }
        
        else if (readButtonCube == "Box8") {
            print("Box8 does...")
        }
    }
    
    
    
  //function to display action buttons

    func showButtons() {

        DispatchQueue.main.async {
            self.cancelButtonOutlet.isHidden = false
            self.readButtonOutlet.isHidden = false
            
        }

    }
    
    
// function to hide action buttons
    func hideButtons(){
        DispatchQueue.main.async {
            self.cancelButtonOutlet.isHidden = true
            self.readButtonOutlet.isHidden = true
           
        }
    }
        
    }




