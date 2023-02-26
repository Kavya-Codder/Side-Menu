//
//  LogoutVC.swift
//  Side menu demo
//
//  Created by Sunil Developer on 26/02/23.
//

import UIKit
import SideMenu

class LogoutVC: UIViewController {
    var menu: SideMenuNavigationController?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func onClickMenuBtn(_ sender: Any) {
        present(menu!, animated: true, completion: nil)
    }
}
