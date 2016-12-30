//
//  ChecklistItem.swift
//  Checklist
//
//  Created by Tim Figueroa on 12/29/16.
//  Copyright © 2016 Tim Figueroa. All rights reserved.
//

import Foundation

class ChecklistItem {
    var text = ""
    var checked = false
    
    func toggleChecked() {
    checked = !checked
    }
}

