//
//  UIApplication.swift
//  Launchpad
//
//  Created by Jamie Brooks on 11/1/18.
//  Copyright © 2018 Ellie Mae. All rights reserved.
//

import UIKit

extension UIApplication {
    var statusBarView: UIView? {
        if responds(to: Selector(("statusBar"))) {
            return value(forKey: "statusBar") as? UIView
        }
        return nil
    }
}
