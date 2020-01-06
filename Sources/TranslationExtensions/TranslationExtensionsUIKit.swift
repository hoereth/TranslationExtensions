//
//  TranslationExtensions.swift
//  CookTime
//
//  Created by Mick on 04.01.20.
//  Copyright © 2020 Pentabyte. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController: Translatable {
    public func translateButton(_ button:UIButton) {
        button.setTitle(self.translateKey(button.titleLabel?.text ?? "please set title"), for: .normal);
    }
    
    public func translateLabel(_ label:UILabel) {
        label.text = self.translateKey(label.text ?? "please set text")
    }
    
    public func translateTextField(_ textField:UITextField) {
        if let placeholder = textField.placeholder {
            textField.placeholder = self.translateKey(placeholder)
        }
    }
    
    public func translateTitle() {
        self.title = self.translateKey("title")
    }
    
    public func translateTabBarItem(_ tabItem: UITabBarItem){
        if let key=tabItem.title {
            tabItem.title = self.translateKey(key)
        }
    }
    
    public func translateBarButtonItem(_ buttonItem:UIBarButtonItem){
        if let key = buttonItem.title {
            buttonItem.title = self.translateKey(key)
        }
    }
    
    public func translateSegmentedControl(_ control:UISegmentedControl) {
        for i in 0..<control.numberOfSegments {
            if let key = control.titleForSegment(at: i) {
                control.setTitle(self.translateKey(key), forSegmentAt: i)
            }
        }
    }
}
