//
//  ViewController.swift
//  words
//
//  Created by merhab on 15‏/9‏/2018.
//  Copyright © 2018 merhab. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var textIn: NSTextField!
    @IBOutlet weak var resultLabel: NSTextField!
    @IBAction func getJithr(_ sender: Any) {
        resultLabel.stringValue = Kalima.getJithr(wrd: textIn.stringValue)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

