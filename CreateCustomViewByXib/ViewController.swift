//
//  ViewController.swift
//  CreateCustomViewByXib
//
//  Created by Jackie Wang on 7/6/21.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - Components
    
    @IBOutlet weak var customView: CustomView!
    
    // MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customView.titleLabel.text = "Hello World"
    }
}

