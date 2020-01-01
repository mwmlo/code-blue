//
//  RoundButton.swift
//  Code Blue
//
//  Created by Michelle Lo on 31/12/19.
//  Copyright © 2019 Michelle Lo. All rights reserved.
//
//  CUSTOM CLASS TO MAKE ROUND "about us" BUTTON

import UIKit

@IBDesignable class RoundButton: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
}
