//
//  CountingLabel.swift
//  Counter Animation app
//
//  Created by  Decagon on 15/08/2021.
//

import UIKit

class CountingLabel: UILabel{
    fileprivate let startValue: Double
    fileprivate let endValue: Double
    fileprivate let animationDuration: Double
    fileprivate let animationStartDate = Date()
    fileprivate var displayLink: CADisplayLink?
    
    init(startValue: Double, endValue: Double, animationDuration: Double) {
        self.startValue = startValue
        self.endValue = endValue
        self.animationDuration = animationDuration
        
        super.init(frame: .zero)
        self.text = "\(startValue)"
        self.textAlignment = .center
        self.font = UIFont.boldSystemFont(ofSize: 18)
        self.backgroundColor = .white
        self.layer.cornerRadius = 50
        
        //creating a CADisplayLink
        displayLink = CADisplayLink(target: self, selector: #selector(handleUpdate))
        displayLink?.add(to: .main, forMode: .default)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func handleUpdate(){
        let now = Date()
        let elapsedTime = now.timeIntervalSince(animationStartDate)
        
        if elapsedTime > animationDuration {
            self.text = "\(endValue)"
        }
        else{
            let percentage = elapsedTime / animationDuration
            let value = startValue + percentage * (endValue - startValue)
            self.text = "\(value)"
        }
    }
}
