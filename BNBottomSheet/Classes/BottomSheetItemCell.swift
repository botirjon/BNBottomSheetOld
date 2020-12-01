//
//  BottomSheetItemCell.swift
//  rubber-band-effect
//
//  Created by botirjon nasridinov on 10.01.2020.
//  Copyright © 2020 SANOAT QURILISH BANK. All rights reserved.
//

import Foundation
import UIKit

class BottomSheetItemCell: UITableViewCell {
    
    var viewInset: UIEdgeInsets = .zero {
        didSet {
            updateViewFrame()
        }
    }
    
    var view: UIView? {
        didSet {
            updateView(oldValue: oldValue, newValue: view)
        }
    }
    
    private func updateView(oldValue: UIView?, newValue: UIView?) {
        oldValue?.removeFromSuperview()
        if let view = newValue {
            contentView.addSubview(view)
            updateViewFrame()
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        updateViewFrame()
    }
    
    private func updateViewFrame() {
        view?.frame = bounds.inset(by: viewInset)
    }
}
