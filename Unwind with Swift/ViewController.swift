//
//  ViewController.swift
//  Unwind with Swift
//
//  Created by wlc on 7/4/15.
//  Copyright (c) 2015 wLc designs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindToViewController(sender: UIStoryboardSegue) {
        if (sender.identifier != nil) {
            if sender.identifier == "colorSelected" {
                
                let colorViewController = sender.sourceViewController as! ColorTableViewController
                
                self.view.backgroundColor = colorViewController.selectedColor;
            }
        }
    }
}

