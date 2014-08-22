//
//  SFlatButton.swift
//  SFlatButton
//
//  Created by Alex Mejicanos on 18/08/14.
//  Copyright (c) 2014 Alex Mejicanos. All rights reserved.
//

import UIKit

class SFlatButton: UIButton
{
    
    enum SFlatButtonType: Int
    {
        case SFBDefault
        case SFBPrimary
        case SFBSuccess
        case SFBInfo
        case SFBWarning
        case SFBDanger
    }
    
    let SFbuttonType: SFlatButtonType = .SFBDefault
    
    required init(coder aDecoder: NSCoder!)
    {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect)
    {
        super.init(frame: frame);
    }
    
    init(frame: CGRect, sfButtonType: SFlatButtonType)
    {
        super.init(frame: frame);
        self.SFbuttonType = sfButtonType;
        self.setupButtons()
    }
    
    func setupButtons() -> Void
    {
        switch (SFbuttonType)
        {
            case .SFBDefault:
                self.setBackgroundImage(self.imageWithColorToButton(UIColor.whiteColor()), forState: UIControlState.Normal)
                self.setBackgroundImage(self.imageWithColorToButton(UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)), forState: UIControlState.Highlighted)
                self.setTitleColor(UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 1), forState: UIControlState.Normal)
                self.setTitleColor(UIColor(red: 77/255, green: 51/255, blue: 51/255, alpha: 1), forState: UIControlState.Highlighted)
                self.layer.borderColor = UIColor(red: 162/255, green: 162/255, blue: 162/255, alpha: 1).CGColor
                self.layer.borderWidth = 1.0
                break
            case .SFBPrimary:
                self.setBackgroundImage(self.imageWithColorToButton(UIColor(red: 70/255, green: 138/255, blue: 207/255, alpha: 1)), forState: UIControlState.Normal)
                self.setBackgroundImage(self.imageWithColorToButton(UIColor(red: 51/255, green: 112/255, blue: 173/255, alpha: 1)), forState: UIControlState.Highlighted)
                self.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
                self.layer.borderColor = UIColor(red: 57/255, green: 125/255, blue: 194/255, alpha: 1).CGColor
                self.layer.borderWidth = 1.0
                break
            case .SFBSuccess:
                self.setBackgroundImage(self.imageWithColorToButton(UIColor(red: 102/255, green: 184/255, blue: 77/255, alpha: 1)), forState: UIControlState.Normal)
                self.setBackgroundImage(self.imageWithColorToButton(UIColor(red: 78/255, green: 157/255, blue: 51/255, alpha: 1)), forState: UIControlState.Highlighted)
                self.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
                self.layer.borderColor = UIColor(red: 87/255, green: 174/255, blue: 58/255, alpha: 1).CGColor
                self.layer.borderWidth = 1.0
                break
            case .SFBInfo:
                self.setBackgroundImage(self.imageWithColorToButton(UIColor(red: 99/255, green: 191/255, blue: 225/255, alpha: 1)), forState: UIControlState.Normal)
                self.setBackgroundImage(self.imageWithColorToButton(UIColor(red: 63/255, green: 175/255, blue: 271/255, alpha: 1)), forState: UIControlState.Highlighted)
                self.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
                self.layer.borderColor = UIColor(red: 80/255, green: 183/255, blue: 221/255, alpha: 1).CGColor
                self.layer.borderWidth = 1.0
                break
            case .SFBWarning:
                self.setBackgroundImage(self.imageWithColorToButton(UIColor(red: 238/255, green: 174/255, blue: 56/255, alpha: 1)), forState: UIControlState.Normal)
                self.setBackgroundImage(self.imageWithColorToButton(UIColor(red: 233/255, green: 152/255, blue: 0/255, alpha: 1)), forState: UIControlState.Highlighted)
                self.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
                self.layer.borderColor = UIColor(red: 235/255, green: 163/255, blue: 4/255, alpha: 1).CGColor
                self.layer.borderWidth = 1.0
                break
            case .SFBDanger:
                self.setBackgroundImage(self.imageWithColorToButton(UIColor(red: 212/255, green: 84/255, blue: 76/255, alpha: 1)), forState: UIControlState.Normal)
                self.setBackgroundImage(self.imageWithColorToButton(UIColor(red: 193/255, green: 49/255, blue: 38/255, alpha: 1)), forState: UIControlState.Highlighted)
                self.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
                self.layer.borderColor = UIColor(red: 199/255, green: 63/255, blue: 52/255, alpha: 1).CGColor
                self.layer.borderWidth = 1.0
                break
            default:
                self.setBackgroundImage(self.imageWithColorToButton(UIColor.whiteColor()), forState: UIControlState.Normal)
                self.setBackgroundImage(self.imageWithColorToButton(UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)), forState: UIControlState.Highlighted)
                self.setTitleColor(UIColor(red: 51/255, green: 51/255, blue: 51/255, alpha: 1), forState: UIControlState.Normal)
                self.setTitleColor(UIColor(red: 77/255, green: 51/255, blue: 51/255, alpha: 1), forState: UIControlState.Highlighted)
                self.layer.borderColor = UIColor(red: 162/255, green: 162/255, blue: 162/255, alpha: 1).CGColor
                self.layer.borderWidth = 1.0
                break
        }
        
        self.layer.cornerRadius = 4.0
        self.layer.masksToBounds = true
    }
    
    func imageWithColorToButton(colorButton: UIColor) -> UIImage
    {
        let rect: CGRect = CGRectMake(0, 0, 1, 1)
        UIGraphicsBeginImageContext(rect.size)
        let context: CGContextRef = UIGraphicsGetCurrentContext()
        CGContextSetFillColorWithColor(context, colorButton.CGColor)
        CGContextFillRect(context, rect)
        let imageReturn: UIImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return imageReturn
    }
}
