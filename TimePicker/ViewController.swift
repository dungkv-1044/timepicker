//
//  ViewController.swift
//  TimePicker
//
//  Created by Khuat Van Dung on 8/22/17.
//  Copyright © 2017 Khuat Van Dung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var timePicker: UIDatePicker!
    @IBOutlet weak var constantCenterVerticalUITimePicker: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        timePicker.setValue(UIColor.white, forKeyPath: "textColor")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        constantCenterVerticalUITimePicker.constant = 0
    }
    
    
    @IBAction func doneButtonTapped(_ sender: UIButton) {
        constantCenterVerticalUITimePicker.constant = 600
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        print(formatter.string(from: timePicker.date))
    }
    @IBAction func cancelButtonTapped(_ sender: UIButton) {
        constantCenterVerticalUITimePicker.constant = 600
    }
}
extension UIView {
    
    func dropShadow(scale: Bool = true) {
        
        self.layer.masksToBounds = false
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.5
        self.layer.shadowOffset = CGSize(width: -1, height: 1)
        self.layer.shadowRadius = 1
        
        self.layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
        self.layer.shouldRasterize = true
        self.layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
}
