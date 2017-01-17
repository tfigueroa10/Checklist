//
//  AddItemController.swift
//  Checklist
//
//  Created by Tim Figueroa on 1/16/17.
//  Copyright © 2017 Tim Figueroa. All rights reserved.
//

import Foundation

import UIKit


class AddItemViewController: UITableViewController {
    @IBOutlet weak var textField: UITextField!
    @IBAction func cancel() {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func done() {
        print("Contents of the text field: \(textField.text!)")

        dismiss(animated: true, completion: nil)
    }
    
     override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        return nil
    }
}
