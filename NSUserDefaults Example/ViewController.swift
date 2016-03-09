//
//  ViewController.swift
//  NSUserDefaults Example
//
//  Created by Eden on 3/1/16.
//  Copyright © 2016 Udacity. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    @IBOutlet var mainView: UIView!
    @IBOutlet weak var midnightThemeLabel: UILabel!
    @IBOutlet weak var themeSwitch: UISwitch!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let boolValue = NSUserDefaults.standardUserDefaults().valueForKey("midnightThemeOn"){
            if boolValue as! Bool {
                switchToMidnight()
            }
        }
//
//        } else {
//            NSUserDefaults.standardUserDefaults().setValue(false, forKey: "midnightThemeOn")
//            print("App is launching for the very first time!")
//        }
    }

    
    @IBAction func switchFlipped(sender: AnyObject) {
        var midnightOn: Bool
        if themeSwitch.on {
            switchToMidnight()
            midnightOn = true
        } else {
            switchToDaytime()
            midnightOn = false
        }
        NSUserDefaults.standardUserDefaults().setValue(midnightOn, forKey: "midnightThemeOn")
       
    }
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    func switchToMidnight(){
        imageView.image = UIImage(named:"moon")
        mainView.backgroundColor = UIColor(red: 28/255, green: 19/255, blue: 76/255, alpha: 1.0)
        midnightThemeLabel.textColor = UIColor.whiteColor()
        titleLabel.textColor = UIColor.whiteColor()
        //themeSwitch.tintColor = UIColor.whiteColor()
        themeSwitch.on = true
    }
    
    func switchToDaytime(){
        imageView.image = UIImage(named:"sun")
        mainView.backgroundColor = UIColor(red: 220/255, green: 240/255, blue: 246/255, alpha: 1.0)
        midnightThemeLabel.textColor = UIColor.blackColor()
        titleLabel.textColor = UIColor.blackColor()
        //themeSwitch.tintColor = UIColor.yellowColor()
        themeSwitch.on = false
    }
}


//print("there is a value for midnightThemeOn, and it's \(boolValue)")
//print("initial bool is true")
// else {
//    print("initial bool is false")
//    
//}