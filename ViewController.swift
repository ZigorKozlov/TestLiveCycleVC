//
//  ViewController.swift
//  TestLiveCycleVC
//
//  Created by Игорь Козлов on 05.10.2020.
//  Copyright © 2020 Игорь Козлов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier! == "goSecondVC" {
            let dist = segue.destination as! SecondViewController
            dist.someProperty = "PIDR"
        }
    }
    
}

