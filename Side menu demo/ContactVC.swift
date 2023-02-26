//
//  ContactVC.swift
//  Side menu demo
//
//  Created by Sunil Developer on 26/02/23.
//

import UIKit
import SideMenu


class ContactVC: UIViewController {
    var menu: SideMenuNavigationController?
    override func viewDidLoad() {
        super.viewDidLoad()

        menu = SideMenuNavigationController(rootViewController: ListController())
        menu?.leftSide = true
        SideMenuManager.default.addPanGestureToPresent(toView: view)
        SideMenuManager.default.leftMenuNavigationController = menu
        menu?.setNavigationBarHidden(true, animated: true)
    }
    
    @IBAction func onClickMenuBtn(_ sender: Any) {
        present(menu!, animated: true, completion: nil)
    }
}
