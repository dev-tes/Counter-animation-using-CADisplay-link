//
//  StatsStackView.swift
//  Counter Animation app
//
//  Created by  Decagon on 15/08/2021.
//

import UIKit

class StatsStackView: UIStackView {
    let countingLabel1 = CountingLabel(startValue: 1, endValue: 15, animationDuration: 1.5)
    let countingLabel2 = CountingLabel(startValue: 100, endValue: 300, animationDuration: 2.5)
    let countingLabel3 = CountingLabel(startValue: 700, endValue: 1000, animationDuration: 3.5)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addArrangedSubview(countingLabel1)
        self.addArrangedSubview(countingLabel2)
        self.addArrangedSubview(countingLabel3)
        self.axis = .vertical
        self.distribution = .fillEqually
        self.spacing = 32
        
        self.layoutMargins = UIEdgeInsets(top: 30, left: 30, bottom: 30, right: 30)
        self.isLayoutMarginsRelativeArrangement = true
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
