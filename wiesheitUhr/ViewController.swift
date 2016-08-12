//
//  ViewController.swift
//  wiesheitUhr
//
//  Created by  Max Wu on 2016/8/11.
//  Copyright © 2016年 Nicole Weter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var dateTimePicker: UIDatePicker!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    let date: NSDate = dateTimePicker.date


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func alarmSetButtonTapped(sender: AnyObject) {
        NSLog("Alarm Set Button Tapped");
        
    }
    
    @IBAction func alarmCancelButtonTapped(sender: AnyObject) {
        NSLog("Alarm Cancel Button Tapped");
    }
    

}

