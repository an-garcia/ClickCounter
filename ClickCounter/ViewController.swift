//
//  ViewController.swift
//  ClickCounter
//
//  Created by xengar on 2017-10-28.
//  Copyright © 2017 xengar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    var label : UILabel!
    var label2 : UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Label
        var label = UILabel()
        label.frame = CGRect.init(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        self.view.addSubview(label)
        self.label = label
        
        var label2 = UILabel()
        label2.frame = CGRect.init(x: 200, y: 150, width: 60, height: 60)
        label2.text = "0"
        self.view.addSubview(label2)
        self.label2 = label2
        
        
        // Button
        var button = UIButton()
        button.frame = CGRect.init(x: 150, y: 250, width: 100, height: 60)
        button.setTitle("Increment", for: .normal)
        button.setTitleColor( UIColor.blue, for: .normal)
        self.view.addSubview(button)
        button.addTarget(self, action: #selector(ViewController.incrementCount),
                         for: UIControlEvents.touchUpInside)
        
        var button2 = UIButton()
        button2.frame = CGRect.init(x: 150, y: 300, width: 100, height: 60)
        button2.setTitle("Decrement", for: .normal)
        button2.setTitleColor( UIColor.blue, for: .normal)
        self.view.addSubview(button2)
        button2.addTarget(self, action: #selector(ViewController.decrementCount),
                         for: UIControlEvents.touchUpInside)
        
        var button3 = UIButton()
        button3.frame = CGRect.init(x: 150, y: 350, width: 130, height: 60)
        button3.setTitle("Change color", for: .normal)
        button3.setTitleColor( UIColor.blue, for: .normal)
        self.view.addSubview(button3)
        button3.addTarget(self, action: #selector(ViewController.changeColor),
                          for: UIControlEvents.touchUpInside)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func incrementCount() {
        self.count = self.count + 1
        self.label.text = "\(self.count)"
        self.label2.text = "\(self.count)"
    }
    
    @objc func decrementCount() {
        self.count = self.count - 1
        self.label.text = "\(self.count)"
        self.label2.text = "\(self.count)"
    }
    
    @objc func changeColor() {
        // Toogle color
        if self.view.backgroundColor == UIColor.white {
            self.view.backgroundColor = UIColor.green
        } else {
            self.view.backgroundColor = UIColor.white
        }
    }

}

