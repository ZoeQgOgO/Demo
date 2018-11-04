//
//  ViewController.swift
//  Demo
//
//  Created by 子渝 秦 on 11/3/18.
//  Copyright © 2018 ZoeQueen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var bgButton: UIButton!
    @IBOutlet weak var imageButton: UIButton!
    @IBOutlet weak var textButton: UITextView!

 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textButton.alpha = 0
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonTouchDown(_ sender: UIButton) {
        //Connected with Touch Down Action
        self.animateButtonDown()
    }
    
    @IBAction func buttonTouchUpOutside(_ sender: UIButton) {
        //Connected with Touch Up Outside Action
        //if touch moved away from button
        self.animateButtonUp()
    }
    
    @IBAction func buttonTouchUpInside(_ sender: UIButton) {
        //Connected with Touch Up Inside Action
        self.animateButtonUp()
        //code to execute when button pressed
    }
    @IBAction func touchDrag(_ sender: UIButton) {
        self.animateLongPress()
        //long press or swip up

    }
    @IBAction func touchDragOutside(_ sender: UIButton) {
        self.animateReback()
        
    }
    
    
    
    func animateButtonDown() {//image scale
        UIView.animate(withDuration: 0.7, delay: 0.0, options: [.allowUserInteraction, .curveEaseIn], animations: {
            self.imageButton.transform = CGAffineTransform(scaleX: 0.6, y: 0.6)
        }, completion: nil)
    }
    
    func animateButtonUp() {//image reback normal
        UIView.animate(withDuration: 0.7, delay: 0.0, options: [.allowUserInteraction, .curveEaseOut], animations: {
            self.imageButton.transform = CGAffineTransform.identity
        }, completion: nil)
    }
    
    func animateLongPress(){//pop up when scoll up
        UIView.animate(withDuration: 0.7, animations: {
          self.imageButton.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
         self.textButton.alpha = 1.0
        }, completion: nil)
       
    }
    
    func animateReback(){//reback when scoll down
        UIView.animate(withDuration: 0.6, animations: {
           self.textButton.alpha = 0
        },completion: nil)
        
    }
   

    
}


