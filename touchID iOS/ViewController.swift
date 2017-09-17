//
//  ViewController.swift
//  touchID iOS
//
//  Created by Afriyandi Setiawan on 6/1/17.
//  Copyright © 2017 Afriyandi Setiawan. All rights reserved.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dest = segue.destination as? PassCodeViewController {
            dest.isSetting = true
        }
    }

    @IBAction func onActivate(_ sender: UISwitch) {
        self.performSegue(withIdentifier: "goToPassCode", sender: self)
    }
    
    @IBAction func unwindToMain(segue: UIStoryboardSegue) {}

}

