//
//  ViewController.swift
//  SampleUIViewLifeCycle
//
//  Created by 岩本康孝 on 2021/07/03.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redView: RedView!
    @IBOutlet weak var redViewWidth100Constraint: NSLayoutConstraint!
    @IBOutlet weak var redViewWidth200Constraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tappedButton(_ sender: Any) {
        redViewWidth100Constraint.isActive = false
        redViewWidth200Constraint.isActive = true
        
        redView.setNeedsUpdateConstraints()
        redView.updateConstraintsIfNeeded()
    }
}

