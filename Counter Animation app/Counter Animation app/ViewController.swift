//
//  ViewController.swift
//  Counter Animation app
//
//  Created by  Decagon on 15/08/2021.
//

import UIKit

class ViewController: UIViewController {
    
    let countingLabel: UILabel = {
        let label = UILabel()                                           //instance of a uilabel
        label.text = "1234"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()                                                                 //parenthesis for execution
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(countingLabel)                                  //to make counting label show
        countingLabel.frame = view.frame                                //need a frame to make it show
        
        //creating a CADisplayLink
        let displayLink = CADisplayLink(target: self, selector: #selector(handleUpdate))
        displayLink.add(to: .main, forMode: .default)
    }
    
    var startValue: Double = 500
    let endValue: Double = 1000
    let animationDuration: Double = 1.5
    
    let animationStartDate = Date()
    
    
    @objc func handleUpdate(){
        let now = Date()
        let elapsedTime = now.timeIntervalSince(animationStartDate)
        
        if elapsedTime > animationDuration {
            countingLabel.text = "\(endValue)"
        }
        else{
            let percentage = elapsedTime / animationDuration
            let value = startValue + percentage * (endValue - startValue)
            self.countingLabel.text = "\(value)"
        }
    }
}



