//
//  ViewController.swift
//  SFlatButton
//
//  Created by Alex Mejicanos on 18/08/14.
//  Copyright (c) 2014 Alex Mejicanos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let defaultBtn: SFlatButton = SFlatButton(frame: CGRectMake(115, 140, 100, 40), sfButtonType: SFlatButton.SFlatButtonType.SFBDefault)
        defaultBtn.setTitle("Default", forState: UIControlState.Normal)
        self.view.addSubview(defaultBtn)
        
        let primaryBtn: SFlatButton = SFlatButton(frame: CGRectMake(115, 190, 100, 40), sfButtonType: SFlatButton.SFlatButtonType.SFBPrimary)
        primaryBtn.setTitle("Primary", forState: UIControlState.Normal)
        self.view.addSubview(primaryBtn)
        
        let successbtn: SFlatButton = SFlatButton(frame: CGRectMake(115, 240, 100, 40), sfButtonType: SFlatButton.SFlatButtonType.SFBSuccess)
        successbtn.setTitle("Success", forState: UIControlState.Normal)
        self.view.addSubview(successbtn)
        
        let infobtn: SFlatButton = SFlatButton(frame: CGRectMake(115, 290, 100, 40), sfButtonType: SFlatButton.SFlatButtonType.SFBInfo)
        infobtn.setTitle("Info", forState: UIControlState.Normal)
        self.view.addSubview(infobtn)
        
        let warningbtn: SFlatButton = SFlatButton(frame: CGRectMake(115, 340, 100, 40), sfButtonType: SFlatButton.SFlatButtonType.SFBWarning)
        warningbtn.setTitle("Warning", forState: UIControlState.Normal)
        self.view.addSubview(warningbtn)
        
        let dangerbtn: SFlatButton = SFlatButton(frame: CGRectMake(115, 390, 100, 40), sfButtonType: SFlatButton.SFlatButtonType.SFBDanger)
        dangerbtn.setTitle("Danger", forState: UIControlState.Normal)
        self.view.addSubview(dangerbtn)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

