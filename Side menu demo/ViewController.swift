//
//  ViewController.swift
//  Side menu demo
//
//  Created by Sunil Developer on 26/02/23.
//

import UIKit
import SideMenu

class ViewController: UIViewController {
var menu: SideMenuNavigationController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menu = SideMenuNavigationController(rootViewController: ListController())
        menu?.leftSide = true
        SideMenuManager.default.addPanGestureToPresent(toView: view)
        SideMenuManager.default.leftMenuNavigationController = menu
        menu?.setNavigationBarHidden(true, animated: true)
       
        // collectionView Layout
        let Layout = UICollectionViewFlowLayout()
        let Width = (UIScreen.main.bounds.width - 40)/3
        Layout.itemSize = CGSize(width: Width, height: 170)
        Layout.minimumLineSpacing = 10
        Layout.minimumInteritemSpacing = 5
        Layout.sectionInset = UIEdgeInsets(top: 5, left: 10, bottom: 20, right: 10)
        Layout.scrollDirection = .vertical
        
    }

    
    @IBAction func menuBtn(_ sender: Any) {
        present(menu!, animated: true, completion: nil)
    }
    
}

