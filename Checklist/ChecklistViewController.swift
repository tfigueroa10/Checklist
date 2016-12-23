//
//  ViewController.swift
//  Checklist
//
//  Created by Tim Figueroa on 12/22/16.
//  Copyright © 2016 Tim Figueroa. All rights reserved.
//
//  Testing 2


import UIKit

class CheckListViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

     func _tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

     func _tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        return cell
    }

}

