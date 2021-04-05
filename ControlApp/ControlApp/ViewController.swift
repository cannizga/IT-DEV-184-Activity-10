//
//  ViewController.swift
//  ControlApp
//
//  Created by Sherry Cannizzo on 4/4/21.
//  Copyright © 2021 Giuseppe Cannizzo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var buttonObject: UIButton!
    
    @IBOutlet var labelSwitch: UILabel!
    
    @IBOutlet var switchObject: UISwitch!
    
    @IBOutlet var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        segmentedControl.insertSegment(withTitle: "Three", at: 2, animated: true)
        segmentedControl.setWidth(50, forSegmentAt: 0)
        segmentedControl.setWidth(50, forSegmentAt: 1)
        segmentedControl.setWidth(50, forSegmentAt: 2)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func touchInside(_ sender: UIButton) {
        buttonObject.setTitle("New", for: UIControlState.normal)
        switchObject.onTintColor = UIColor.red
        switchObject.tintColor = UIColor.blue
    }
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        if switchObject.isOn
        {
            labelSwitch.text = "On"
        }
        else
        {
            labelSwitch.text = "Off"
        }
    }
    
    @IBAction func segmentedControlTapped(_ sender: UISegmentedControl) {
        switch segmentedControl.selectedSegmentIndex
        {
            case 0:
                labelSwitch.text = "One"
            
            case 1:
                labelSwitch.text = "Two"
            
            default:
                labelSwitch.text = "Three"
        }

    }
    
}

