//
//  ChatVC.swift
//  Smack
//
//  Created by Ella Robertson on 6/4/18.
//  Copyright © 2018 Ella Robertson. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {

    
    //Outlets
    @IBOutlet weak var menuBtn: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
    self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
    }
    


}
