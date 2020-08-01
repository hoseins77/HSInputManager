//
//  ViewController.swift
//  HSInputManagerExample
//
//  Created by Hossein Safaie on 5/11/1399 AP.
//  Copyright © 1399 Hossein Safaie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txt1: UITextField!
    @IBOutlet weak var txt2: UITextField!
    @IBOutlet weak var txt3: UITextField!
    @IBOutlet weak var txt4: UITextField!
    @IBOutlet weak var txt5: UITextField!
    
    let inputManager = HSInputManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputManager
            .add(input: txt1, maxLength: 10)
            .add(input: txt2, maxLength: 6)
            .add(input: txt3, maxLength: 4)
            .add(input: txt4, maxLength: 2)
            .add(input: txt5, maxLength: 5)
    }


}

