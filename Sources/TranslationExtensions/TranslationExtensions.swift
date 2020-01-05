//
//  TranslationExtensions.swift
//
//  Created by Mick on 04.01.20.
//  Copyright © 2020 Pentabyte. All rights reserved.
//

import Foundation

protocol Translatable {
}

extension Translatable {
    public func translateKey(_ key:String) -> String {
        let name = String.init(describing: type(of: self));
        let fullKey = "\(name).\(key)";
        return NSLocalizedString(fullKey, comment: "no comment");
    }
    
    public func translateFormatKey(_ key:String, params: Any... ) -> String {
        let format = self.translateKey(key);
        let result = String.init(format: format, params)
        return result
    }
}
