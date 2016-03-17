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
        let weWantMidnight = NSUserDefaults.standardUserDefaults().valueForKey("midnightThemeOn")
        print("there is a value for midnightThemeOn, and it's \(weWantMidnight)")

        if weWantMidnight as! Bool == true {
            switchToMidnight()
            print("initial bool is true")
        } else {
            print("initial bool is false")
        }
    }

    
    @IBAction func switchFlipped(sender: AnyObject) {
        if themeSwitch.on {
            switchToMidnight()
            NSUserDefaults.standardUserDefaults().setValue(true, forKey: "midnightThemeOn")

        } else {
            switchToDaytime()
            NSUserDefaults.standardUserDefaults().setValue(false, forKey: "midnightThemeOn")

        }
    }
    


    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    func switchToMidnight(){
        imageView.image = UIImage(named:"moon")
        mainView.backgroundColor = UIColor(red: 28/255, green: 19/255, blue: 76/255, alpha: 1.0)
        midnightThemeLabel.textColor = UIColor.whiteColor()
        titleLabel.textColor = UIColor.whiteColor()
        themeSwitch.on = true
    }
    
    func switchToDaytime(){
        imageView.image = UIImage(named:"sun")
        mainView.backgroundColor = UIColor(red: 220/255, green: 240/255, blue: 246/255, alpha: 1.0)
        midnightThemeLabel.textColor = UIColor.blackColor()
        titleLabel.textColor = UIColor.blackColor()
        themeSwitch.on = false
    }
}


