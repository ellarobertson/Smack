//
//  ChannelVC.swift
//  Smack
//
//  Created by Ella Robertson on 6/4/18.
//  Copyright © 2018 Ella Robertson. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.width - 60
    }
    
    //Outlets
    @IBOutlet weak var loginBtn: UIButton!
    
    
    //Func
    @IBAction func loginBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }
    
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue){}
}
