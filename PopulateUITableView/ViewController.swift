//
//  ViewController.swift
//  PopulateUITableView
//
//  Created by Tennant Shaw on 5/4/17.
//  Copyright © 2017 Tennant Shaw. All rights reserved.
//

import UIKit

class TasksTableViewController: UIViewController {
    let dataSource: Task = Task(weapons: [
        "Axe",
        "Mace",
        "Halbard",
        "Warhammer",
        "Sword",
        "Sling",
        "Spear",
        ])
    
    
    var tableView: UITableView {
        return view as! UITableView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self as? UITableViewDelegate
        tableView.dataSource = dataSource
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    
}



class Task: NSObject, UITableViewDataSource {
    
    let title: NSString = ""
    let weapons: [String]
    init(weapons: [String]) {
        self.weapons = weapons
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weapons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        let weaponName = weapons[indexPath.row]
        cell.textLabel?.text = weaponName
        return cell
    }
}

