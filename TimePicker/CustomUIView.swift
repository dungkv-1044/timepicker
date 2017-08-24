//
//  UITimePicker.swift
//  TimePicker
//
//  Created by Khuat Van Dung on 8/22/17.
//  Copyright © 2017 Khuat Van Dung. All rights reserved.
//

import UIKit
@IBDesignable class CustomUIView: UIView {
   
    @IBInspectable var cornerRadius : CGFloat = 10 {
        didSet {
           
                self.layer.cornerRadius  = cornerRadius
            
        }
    }
    @IBInspectable
    var shadowColor : UIColor = UIColor.black  {
        didSet {
            self.layer.shadowColor = shadowColor.cgColor
            self.layer.masksToBounds = false
            self.layer.shadowOpacity = 1
            self.layer.shadowOffset = CGSize(width: -1, height: 1)
            self.layer.shadowRadius = 5
        }
    }
    @IBInspectable var borderWidth: CGFloat = 1 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    @IBInspectable var borderColor: UIColor = UIColor.clear {
        
        didSet {
            
            self.layer.borderColor = borderColor.cgColor
        }
    }

}
