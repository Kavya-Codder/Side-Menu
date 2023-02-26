//
//  SideMenuVC.swift
//  Mansarovar
//
//  Created by Sunil Developer on 15/12/22.
//

import UIKit
import SideMenu

class SideMenuVC: UIViewController {

//    @IBOutlet weak var contenerView: UIView!
//    @IBOutlet weak var btnMenu: UIButton!
//    @IBOutlet weak var tableView: UITableView!
//
//    @IBOutlet weak var viewImgBG: UIView!
//
//    @IBOutlet weak var profileImg: UIImageView!
//
//    @IBOutlet weak var lblProfileName: UILabel!
//
//    @IBOutlet weak var lblProfileEmail: UILabel!
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

//        UIView.animate(withDuration: 0.5, delay: 0.0, options: .curveEaseInOut, animations: {
//            self.view.frame.origin.x = -self.view.bounds.size.width
//            self.menuBackDelegate?.back(index: 0)
//        }, completion: { _ in
//            self.willMove(toParent: nil)
//            self.view.removeFromSuperview()
//            self.removeFromParent()
//        })
//        contenerView.isHidden = false
//        tableView.isHidden = false
//        self.view.bringSubviewToFront(contenerView)
//        if !isSideViewOpen {
//            isSideViewOpen = true
//            contenerView.frame = CGRect(x: 0, y: 80, width: 0, height: 816)
//            tableView.frame = CGRect(x: 0, y: 0, width: 0, height: 816)
//            UIView.setAnimationDuration(0.3)
//            UIView.setAnimationDelegate(self)
//            UIView.beginAnimations("TableAnimation", context: nil)
//
//
//            contenerView.frame = CGRect(x: 0, y: 80, width: 300, height: 816)
//            tableView.frame = CGRect(x: 0, y: 0, width: 300, height: 816)
//            UIView.commitAnimations()
//        } else {
//            contenerView.isHidden = true
//            tableView.isHidden = true
//            isSideViewOpen = false
//            contenerView.frame = CGRect(x: 0, y: 80, width: 300, height: 816)
//            tableView.frame = CGRect(x: 0, y: 0, width: 300, height: 816)
//            UIView.setAnimationDuration(0.3)
//            UIView.setAnimationDelegate(self)
//            UIView.beginAnimations("TableAnimation", context: nil)
//
//            contenerView.frame = CGRect(x: 0, y: 80, width: 0, height: 816)
//            tableView.frame = CGRect(x: 0, y: 0, width: 0, height: 816)
//            UIView.commitAnimations()
//        }
//
//
  //  }

}
