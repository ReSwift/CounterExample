//
//  ViewController.swift
//  CounterExample
//
//  Created by Colin Eberhardt on 04/08/2016.
//  Copyright © 2016 Colin Eberhardt. All rights reserved.
//

import UIKit
import ReSwift


class ViewController: UIViewController, StoreSubscriber {
    
    @IBOutlet weak var counterLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainStore.subscribe(self)
    }
    
    func newState(state: AppState) {
        counterLabel.text = "\(mainStore.state.counter)"
    }
    
    @IBAction func downTouch(sender: AnyObject) {
        mainStore.dispatch(CounterActionDecrease());
    }
    
    @IBAction func upTouch(sender: AnyObject) {
        mainStore.dispatch(CounterActionIncrease());
    }

}

