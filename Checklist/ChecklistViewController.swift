//
//  ViewController.swift
//  Checklist
//
//  Created by Tim Figueroa on 12/22/16.
//  Copyright © 2016 Tim Figueroa. All rights reserved.
//

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

     override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let cell = tableView.cellForRow(at: indexPath) {
            if cell.accessoryType == .none {
                cell.accessoryType = .checkmark
            } else {
                cell.accessoryType = .none
            }
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }

     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
       
        let label = cell.viewWithTag(1000) as! UILabel
        
        if indexPath.row % 5 == 0 {
            label.text = "Walk the dog please"
        } else if indexPath.row % 5 == 1 {
            label.text = "Brush your teeth please"
        } else if indexPath.row % 5 == 2 {
            label.text = "Learn iOS developement using Swift"
        } else if indexPath.row % 5 == 3 {
            label.text = "Be sure to practice Swift"
        } else if indexPath.row % 5 == 4 {
            label.text = "May I have some ice cream please"
        }
        return cell
    }

}

