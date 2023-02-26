//
//  ListController.swift
//  Mansarovar
//
//  Created by Sunil Developer on 16/12/22.
//

import UIKit
import SideMenu

class ListController: UITableViewController {
    var arrData = ["Home", "Select Class", "Educator", "Profile", "Contact", "LogOut"]
    var arrImg = ["sHome", "sClass", "sEducator", "sUser", "sPhone", "sLogout"]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")

        self.tableView.backgroundColor = UIColor.init(named: "loginButton")


        tableView.separatorStyle = .none
        let headerView = UIView(frame: CGRect(x: 0, y: 0, width: self.tableView.frame.width, height: 100))
        let imageView = UIImageView(frame: CGRect(x: 20, y: 30, width: 50, height: 50))
        imageView.image = UIImage(named: "user")
        headerView.addSubview(imageView)
        let name = UILabel(frame: CGRect(x: 80, y: 35, width: 200, height: 30))
        name.textColor = UIColor.white
        name.font = .boldSystemFont(ofSize: 20.0)
        headerView.addSubview(name)
        let view = UIView(frame: CGRect(x: 0, y: 100, width: 240 , height: 2))
        view.backgroundColor = UIColor.gray
        headerView.addSubview(view)
        self.tableView.tableHeaderView = headerView

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrData.count
    }
    override  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            let sObj = arrData[indexPath.row]
            cell.textLabel?.text = sObj
        cell.backgroundColor = UIColor.init(named: "loginButton")
        cell.textLabel?.textColor = UIColor.white
        return cell
        }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50.0
    }

}

