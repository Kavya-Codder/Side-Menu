//
//  SideMenuVC.swift
//  Mansarovar
//
//  Created by Sunil Developer on 15/12/22.
//

import UIKit
import SideMenu

class SideMenuVC: UIViewController {

    var isSideViewOpen: Bool = false
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
