//
//  CounterCell.swift
//  CounterExample
//
//  Created by Katie Bogdanska on 11/11/16.
//  Copyright © 2016 Colin Eberhardt. All rights reserved.
//

import UIKit
import ReSwift

typealias CellAction = (Bool) -> ()

class CounterCell: UITableViewCell {
    
    var action: CellAction?

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    
    @IBAction func stepperPressed(_ sender: UIStepper) {
        if sender.value > 0 {
            self.action?(true)
        } else {
            self.action?(false)
        }
        sender.value = 0
    }
}
