//
//  ViewController.swift
//  ClickCounter
//
//  Created by xengar on 2017-10-28.
//  Copyright © 2017 xengar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var label = UILabel()
        label.frame = CGRect.init(x:150, y:150, width:60, height:60)
        label.text = "0"
        
        self.view.addSubview(label)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

