//
//  ViewController.swift
//  Code Blue
//
//  Created by Michelle Lo on 21/12/19.
//  Copyright © 2019 Michelle Lo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet var picker: UIPickerView!
    
    var pickerData : [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.picker?.delegate = self
        self.picker?.dataSource = self
        
        pickerData = ["Internal Assessment", "Extended Essay", "Language Oral", "Update ManageBac"]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Number of columns
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // Number of rows
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    // The data to return fopr the row and component (column) that's being passed in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        // This method is triggered whenever the user makes a change to the picker selection.
        // The parameter named row and component represents what was selected.
    }
    
    // Links in about page
    
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
