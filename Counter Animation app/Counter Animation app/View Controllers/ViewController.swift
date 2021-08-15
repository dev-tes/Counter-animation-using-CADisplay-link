//
//  ViewController.swift
//  Counter Animation app
//
//  Created by  Decagon on 15/08/2021.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        let stackView = StatsStackView()
        stackView.frame = view.frame
        view.addSubview(stackView)
    }
}



