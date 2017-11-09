//
//  ViewController.swift
//  Test Dialog
//
//  Created by Hoang Thuan on 11/9/17.
//  Copyright © 2017 Hoang Thuan. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    @IBAction func btnShowAlert(_ sender: Any) {
        let alert = NSAlert()
        alert.messageText = "question"
        alert.informativeText = "text"
        alert.alertStyle = .warning
        
        alert.addButton(withTitle: "Login")
        alert.addButton(withTitle: "Cancel")
        
        
        let unameField = NSTextField(frame: NSRect(x: 0, y: 2, width: 200, height: 24))
        let passField = NSSecureTextField(frame: NSRect(x: 0, y: 28, width: 200, height: 24))
        
        let stackViewer = NSStackView(frame: NSRect(x: 0, y: 0, width: 200, height: 58))
        stackViewer.addSubview(unameField)
        stackViewer.addSubview(passField)
        
        alert.accessoryView = stackViewer
        
        let response: NSApplication.ModalResponse = alert.runModal()
        
//        if (response == NSApplication.ModalResponse.alertFirstButtonReturn) {
//            return (unameField.stringValue, passField.stringValue)
//        } else {
//            return ("", "")
//        }
    }
}

