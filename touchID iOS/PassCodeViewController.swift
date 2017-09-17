//
//  PassCodeViewController.swift
//  touchID iOS
//
//  Created by Afriyandi Setiawan on 6/1/17.
//  Copyright © 2017 Afriyandi Setiawan. All rights reserved.
//

import UIKit

class PassCodeViewController: UIViewController {
    
    @IBOutlet weak var indicatorIcon: UIStackView!
    var isSetting:Bool?
    internal var passPhrase:String = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onButtonTap(_ sender: UIButton) {
        passPhrase += sender.currentTitle ?? ""
        let _indicatorIcon = indicatorIcon.arrangedSubviews.filter { (view) -> Bool in
            return view.backgroundColor == .gray
        }
        if _indicatorIcon.count < indicatorIcon.arrangedSubviews.count {
            UIView.animate(withDuration: 0.2, animations: {
                self.indicatorIcon.arrangedSubviews[_indicatorIcon.count].backgroundColor = .gray
            })
            if _indicatorIcon.count == indicatorIcon.arrangedSubviews.count - 1 {
                print(passPhrase)
            }
        } else {
            return
        }
    }
    
    @IBAction func onUndoTap(_ sender: UIButton) {
        if passPhrase != "" {
            let view = indicatorIcon.arrangedSubviews[passPhrase.characters.count - 1]
            UIView.animate(withDuration: 0.2, animations: {
                view.backgroundColor = .white
            }, completion: { _ in
                self.passPhrase.remove(at: self.passPhrase.index(before: self.passPhrase.endIndex))
            })
        }
    }
    

}

extension UIView {
    
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
