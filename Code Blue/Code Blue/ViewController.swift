//
//  ViewController.swift
//  Code Blue
//
//  Created by Michelle Lo on 21/12/19.
//  Copyright © 2019 Michelle Lo. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    var db: Firestore!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let settings = FirestoreSettings()
        Firestore.firestore().settings = settings
        db = Firestore.firestore()
    }
    
// LINKS FOR THE ABOUT PAGE
    
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
    
// JOIN CHOCO PROJECT
    
    
    @IBOutlet weak var lockerNumber: UITextField!
    
    @IBOutlet weak var optionMessage: UITextView!
    
    // Get input from locker number and optional message
    @IBAction func submitTapped(_ sender: UIButton) {
        guard let lockerNumber = lockerNumber.text, !lockerNumber.isEmpty else {return}
        guard let optionMessage = optionMessage.text, !optionMessage.isEmpty else {return}
        
        let dataToSave: [String: Any] = ["locker": lockerNumber, "message": optionMessage]
        
        // Send input to Firestore database
        var ref: DocumentReference? = nil
        ref = db.collection("data").addDocument(data: dataToSave) { err in
            if let err = err {
                print("Error: \(err)")
            } else {
                print("Data has been saved!")
                // Pop up notification when data has been sent
                let successAlert = UIAlertController(title: "Submitted!", message: "Thank you for contributing to The Choco Project.", preferredStyle: .alert)
                successAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(successAlert, animated: true)
            }
        }
    }
    
}
