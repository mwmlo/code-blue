//
//  ViewController.swift
//  Code Blue
//
//  Created by Michelle Lo on 21/12/19.
//  Copyright © 2019 Michelle Lo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func timeManagementVector(_ sender: Any) {
        if let url = URL(string: "https://www.vecteezy.com/free-vector/time-management") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    
    @IBAction func peopleTalkingVector(_ sender: Any) {
        if let url = URL(string: "https://www.vecteezy.com/free-vector/people-talking") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    
    @IBAction func mentalHealthVector(_ sender: Any) {
        if let url = URL(string: "https://www.vecteezy.com/free-vector/mental-health") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
    
    @IBAction func givingVector(_ sender: Any) {
        if let url = URL(string: "https://www.vecteezy.com/free-vector/giving") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
    
}
