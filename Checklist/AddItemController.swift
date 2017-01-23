//
//  AddItemController.swift
//  Checklist
//
//  Created by Tim Figueroa on 1/16/17.
//  Copyright © 2017 Tim Figueroa. All rights reserved.
//

import Foundation

import UIKit



class AddItemViewController: UITableViewController, UITextFieldDelegate {
   
    @IBAction func cancel() {
        dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var doneBarButton: UIBarButtonItem!
    @IBAction func done() {
        
    print("Contents of the text field: \(textField.text!)")
        
    dismiss(animated: true, completion: nil)
    }
    
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
    return nil
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        textField.becomeFirstResponder()
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        let oldText = textField.text! as NSString
        let newText = oldText.replacingCharacters(in: range, with: string)
        
        if newText.length > 0 {
            doneBarButton.isEnabled = true
        } else {
            doneBarButton.isEnabled = false
        }
        return true
    }
}


