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
        
        let dateTime : NSDate = dateTimePicker.date
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func scheduleLocalNotification(fireDate: NSDate){
       let notification = UILocalNotification()
       notification.fireDate = NSDate()
       notification.alertBody = "Time to wake up!"
       notification.soundName = "20.01-KJV.caf"
       UIApplication.sharedApplication().scheduleLocalNotification(notification)
        
        
    }
    
    @IBAction func alarmSetButtonTapped(sender: AnyObject) {
        
        let dateFormatter = NSDateFormatter()
        
        dateFormatter.timeZone = NSTimeZone.localTimeZone()
        dateFormatter.timeStyle = NSDateFormatterStyle.ShortStyle
        dateFormatter.dateStyle = NSDateFormatterStyle.ShortStyle
        
        let dateTimeString = dateFormatter.stringFromDate(dateTimePicker.date)
        
        NSLog("Alarm Set Button Tapped",dateTimeString)
    }
    
    @IBAction func alarmCancelButtonTapped(sender: AnyObject) {
        NSLog("Alarm Cancel Button Tapped");
    }
    

    
}

