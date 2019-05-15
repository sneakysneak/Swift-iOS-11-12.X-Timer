//
//  ViewController.swift
//  TimerApp
//
//  Created by sneakysneak on 23/11/2018.
//  Copyright © 2018 sneakysneak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //object of the class Timer
    var timer = Timer()
    
    var time = 210
    //It's @obj !!!
    @objc func decreaseTimer() {
        
        if time > 0 {
        //+= would be increasing
        time -= 1
        //Convert int to string
        lblTimer.text = String(time)
            
        } else {
            
            timer.invalidate()
        }
    }
    
    @IBOutlet var lblTimer: UILabel!
    
    @IBAction func btnPlay(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseTimer), userInfo: nil, repeats: true)
    }
    
    @IBAction func btnPause(_ sender: Any) {
        
        timer.invalidate()
        
    }
    
    @IBAction func btnMinus(_ sender: Any) {
        
        if  time > 10 {
        
        time -= 10
        
        lblTimer.text = String(time)
            
        }
    }
    
    @IBAction func btnPlus(_ sender: Any) {
        
        time += 10
        
    }
    
    @IBAction func btnReset(_ sender: Any) {
        
        timer.invalidate()
        
        time = 210
        
        lblTimer.text = String(time)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }
}
