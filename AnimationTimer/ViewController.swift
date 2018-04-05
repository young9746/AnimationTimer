//
//  ViewController.swift
//  AnimationTimer
//
//  Created by D7703_16 on 2018. 4. 5..
//  Copyright © 2018년 김영석. All rights reserved.
//

import UIKit
class ViewController: UIViewController {
    
    var counter = 1
    var myTimer = Timer()
    var play = 0
    
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var Index: UILabel!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Index.text = String(counter)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btSt(_ sender: Any) {
        if play == 0 {
            myTimer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(doAnimation), userInfo: nil, repeats: true)
            button.setTitle("stop", for : .normal)
            play = 1
        } else {
            myTimer.invalidate()
            button.setTitle("start", for : .normal)
            play = 0
            
        }
    }
    
    
    
    
    @objc func doAnimation() {
        if counter == 5 {
            counter = 1
        } else {
            counter = counter + 1
        }
        myImageView.image = UIImage(named: "frame\(counter).png")
        Index.text = String(counter)
    }
    
}
