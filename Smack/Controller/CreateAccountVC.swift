//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Ella Robertson on 6/7/18.
//  Copyright © 2018 Ella Robertson. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func closeBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
}
