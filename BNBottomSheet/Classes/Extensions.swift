//
//  Extensions.swift
//  BNBottomSheet
//
//  Created by Botirjon Nasridinov on 01/12/20.
//

import UIKit

extension UIViewController {
    
    var isVisible: Bool {
        return self.viewIfLoaded?.window != nil
    }
    
    var viewMargins: UIEdgeInsets {
        if #available(iOS 11.0, *) {
            return view.safeAreaInsets
        }
        else {
            return .init(top: topLayoutGuide.length,
                         left: 0,
                         bottom: bottomLayoutGuide.length,
                         right: 0)
        }
    }
    
    var safeAreaFrame: CGRect {
        let w = view.bounds.width-viewMargins.left-viewMargins.right
        let h = view.bounds.height-viewMargins.top-viewMargins.bottom
        return .init(x: viewMargins.left, y: viewMargins.top, width: w, height: h)
    }
}
