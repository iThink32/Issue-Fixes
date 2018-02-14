//
//  UITableView+Additions.swift
//  RynlyUI
//
//  Created by N A Shashank on 2/13/18.
//  Copyright © 2018 N A Shashank. All rights reserved.
//

import Foundation

extension UITableView {
    
    public func contentFrame() -> CGRect {
        guard let keyWindow = UIApplication.shared.keyWindow,let navController = keyWindow.rootViewController as? UINavigationController else{
            return UIScreen.main.bounds
        }
        if #available(iOS 11.0, *)
        {
            return CGRect(x: 0, y: 0, width: self.frame.width, height:  self.bounds.height - self.safeAreaInsets.top - self.safeAreaInsets.bottom)
        }
        return CGRect(x: 0, y: 0, width: self.frame.width, height: self.bounds.height - navController.navigationBar.frame.height - UIApplication.shared.statusBarFrame.height)
    }
    
}
