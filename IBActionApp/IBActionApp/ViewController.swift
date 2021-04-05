//
//  ViewController.swift
//  IBActionApp
//
//  Created by Sherry Cannizzo on 4/4/21.
//  Copyright © 2021 Giuseppe Cannizzo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var labelResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        labelResult.frame.size.width = 120
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonTapped(_ sender: Any) {
        switch (sender as AnyObject).tag
        {
        case 1:
            labelResult.text = "Button 1"
            
        case 2:
            labelResult.text = "Button 2"
            
        default:
            labelResult.text = "Default"
        }
    }
    
    @IBAction func buttonRespond(_ sender: UIButton) {
        switch sender.tag
        {
        case 1:
            labelResult.text = sender.titleLabel?.text
            
        case 2:
            labelResult.text = sender.titleLabel?.text
            
        default:
            labelResult.text = "Default" }
    }
    
}

