//
//  Constraint.swift
//  SmartCampus
//
//  Created by SeonIl Kim on 2017. 4. 12..
//  Copyright © 2017년 INUAPPCENTER. All rights reserved.
//

import UIKit

extension UIView {
    func addConstraintsWithFormat(format: String, views: UIView...) {
        
        var viewDictionary = [String: UIView]()
        
        for (index, view) in views.enumerated() {
            let key = "v\(index)"
            viewDictionary[key] = view
            view.translatesAutoresizingMaskIntoConstraints = false
        }
        
        self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format,
                                                           options: NSLayoutFormatOptions(),
                                                           metrics: nil,
                                                           views: viewDictionary))
    }
}
