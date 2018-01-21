//
//  LeftMenuViewController.swift
//  SampleSideMenu
//
//  Created by 一騎高橋 on 2016/11/17.
//  Copyright © 2016年 IkkiTakahashi. All rights reserved.
//

import UIKit
import SideMenu

class LeftMenuViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let menus = ["Menu 1", "Menu 2", "Mennu3"]
    
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menus.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let menu = menus[indexPath.row]
        
        cell.textLabel?.text = menu
        
        return cell
    }

}
