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
        let weWantMidnight = UserDefaults.standard.value(forKey: "midnightThemeOn")
            if weWantMidnight as! Bool {
                switchToMidnight()
            }
    }
    
    
    @IBAction func switchFlipped(_ sender: AnyObject) {
        if themeSwitch.isOn {
            switchToMidnight()
            UserDefaults.standard.setValue(true, forKey: "midnightThemeOn")
            
        } else {
            switchToDaytime()
            UserDefaults.standard.setValue(false, forKey: "midnightThemeOn")
            
        }
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    


    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    func switchToMidnight(){
        imageView.image = UIImage(named:"moon")
        mainView.backgroundColor = UIColor(red: 28/255, green: 19/255, blue: 76/255, alpha: 1.0)
        midnightThemeLabel.textColor = UIColor.white
        titleLabel.textColor = UIColor.white
        themeSwitch.isOn = true
    }
    
    func switchToDaytime(){
        imageView.image = UIImage(named:"sun")
        mainView.backgroundColor = UIColor(red: 220/255, green: 240/255, blue: 246/255, alpha: 1.0)
        midnightThemeLabel.textColor = UIColor.black
        titleLabel.textColor = UIColor.black
        themeSwitch.isOn = false
    }
}


