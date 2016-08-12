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

    func scheduleLocalNotificationWithDate(fireDate: NSDate){
        print("We got int!")
       let notification = UILocalNotification()
       notification.fireDate = fireDate
       notification.alertBody = "Time to wake up!"
        
        //print(notification.alertBody)
        
       notification.soundName = "sfx_goal.caf"
       UIApplication.sharedApplication().scheduleLocalNotification(notification)
    }
    
    
    @IBAction func alarmSetButtonTapped(sender: AnyObject) {
        
        let dateFormatter = NSDateFormatter()
        
        dateFormatter.timeZone = NSTimeZone.localTimeZone()
        dateFormatter.timeStyle = NSDateFormatterStyle.ShortStyle
        dateFormatter.dateStyle = NSDateFormatterStyle.ShortStyle
        
        let dateTimeString = dateFormatter.stringFromDate(dateTimePicker.date)
        
        NSLog("Alarm Set Button Tapped \(dateTimeString)")
        
        self.scheduleLocalNotificationWithDate(dateTimePicker.date)
    }
    
    @IBAction func alarmCancelButtonTapped(sender: AnyObject) {
        NSLog("Alarm Cancel Button Tapped");
    }
    

    
}

