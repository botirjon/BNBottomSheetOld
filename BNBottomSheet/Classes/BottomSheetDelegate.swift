//
//  BottomSheetDelegate.swift
//  rubber-band-effect
//
//  Created by botirjon nasridinov on 10.01.2020.
//  Copyright © 2020 SANOAT QURILISH BANK. All rights reserved.
//

import Foundation
import UIKit

public protocol BottomSheetDelegate {
    func bottomSheetController(_ controller: BottomSheetController, heightForItemAt indexPath: IndexPath) -> CGFloat
    func bottomSheetController(_ controller: BottomSheetController, heightForHeaderInSection section: Int) -> CGFloat
    func bottomSheetController(_ controller: BottomSheetController, heightForFooterInSection section: Int) -> CGFloat
    
    func bottomSheetController(_ controller: BottomSheetController, insetForItemAt indexPath: IndexPath) -> UIEdgeInsets
    
    func bottomSheetController(_ controller: BottomSheetController, didSelectItemAt indexPath: IndexPath)
    func bottomSheetController(_ controller: BottomSheetController, separatorInsetForItemAt indexPath: IndexPath) -> UIEdgeInsets
    func bottomSheetControllerDidCancel(_ controller: BottomSheetController)
}

public extension BottomSheetDelegate {
    func bottomSheetControllerDidCancel(_ controller: BottomSheetController) {}
    
    func bottomSheetController(_ controller: BottomSheetController, heightForItemAt indexPath: IndexPath) -> CGFloat {
        return 0
    }
    
    
    func bottomSheetController(_ controller: BottomSheetController, heightForHeaderInSection section: Int) -> CGFloat {
        return 0
    }
    
    
    func bottomSheetController(_ controller: BottomSheetController, heightForFooterInSection section: Int) -> CGFloat {
        return 0
    }
    
    func bottomSheetController(_ controller: BottomSheetController, insetForItemAt indexPath: IndexPath) -> UIEdgeInsets {
        return .zero
    }
    
    func bottomSheetController(_ controller: BottomSheetController, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    func bottomSheetController(_ controller: BottomSheetController, separatorInsetForItemAt indexPath: IndexPath) -> UIEdgeInsets {
        return .zero
    }
}
