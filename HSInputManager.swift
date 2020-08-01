//
//  HSInputManager.swift
//  HSInputManagerExample
//
//  Created by Hossein Safaie on 5/11/1399 AP.
//  Copyright © 1399 Hossein Safaie. All rights reserved.
//

import UIKit

class HSInputManager {
    
    private var inputs = [(Int, UITextField, Int)]()
    
    public func add(input: UITextField, maxLength: Int) -> HSInputManager {
        let item = input
        item.addTarget(self, action: #selector(textFieldDidChange(textField: )), for: .editingChanged)
        inputs.append((inputs.count , item, maxLength))
        return self
    }
    
    @objc private func textFieldDidChange(textField: UITextField){

        let length = inputs.first(where: {$0.1 == textField})?.2
        let id = inputs.first(where: {$0.1 == textField})?.0
        if textField.text!.count == length {
            if let next = inputs.first(where: { $0.0 == id! + 1 })?.1 {
                next.becomeFirstResponder()
            } else {
                textField.resignFirstResponder()
            }
        } else if textField.text!.count == 0 {
            if let prev = inputs.first(where: { $0.0 == id! - 1 })?.1 {
                prev.becomeFirstResponder()
            }
        }

    }
}

