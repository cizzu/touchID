//
//  PassCodeViewController.swift
//  touchID iOS
//
//  Created by Afriyandi Setiawan on 6/1/17.
//  Copyright © 2017 Afriyandi Setiawan. All rights reserved.
//

import UIKit

class PassCodeViewController: UIViewController {
    
    var isSetting:Bool?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onButtonTap(_ sender: UIButton) {
    }
    
    @IBAction func onUndoTap(_ sender: UIButton) {
    }
    

}

extension UIButton {
    
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        get {
            return UIColor(cgColor: layer.borderColor!)
        }
        set {
            layer.borderColor = newValue?.cgColor
        }
    }
}
