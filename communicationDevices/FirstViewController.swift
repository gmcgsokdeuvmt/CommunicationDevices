//
//  FirstViewController.swift
//  communicationDevices
//
//  Created by Arashi USUKI on 7/24/15.
//  Copyright (c) 2015 Arashi USUKI. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

   
    var childUIViewController: ChildUIViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pushButtonParent(sender: UIButton) {
        
        moveToParentViewController()
        
    }
    
    @IBAction func pushButtonChild(sender: UIButton) {
        
        moveToChildViewController()
        
    }
    
    func moveToParentViewController(){
        
        var storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let parentUIViewController: ParentUIViewController = storyboard.instantiateViewControllerWithIdentifier("Parent") as! ParentUIViewController
        
        parentUIViewController.modalTransitionStyle = UIModalTransitionStyle.FlipHorizontal
        
        self.presentViewController(parentUIViewController, animated: true, completion: nil)
        
    }
    
    func moveToChildViewController(){
        
        var storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let childUIViewController: ChildUIViewController = storyboard.instantiateViewControllerWithIdentifier("Child") as! ChildUIViewController

        childUIViewController.modalTransitionStyle = UIModalTransitionStyle.FlipHorizontal
        
        self.presentViewController(childUIViewController, animated: true, completion: nil)
        
    }
}

