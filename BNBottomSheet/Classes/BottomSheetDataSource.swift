//
//  BottomSheetDataSource.swift
//  rubber-band-effect
//
//  Created by botirjon nasridinov on 10.01.2020.
//  Copyright © 2020 SANOAT QURILISH BANK. All rights reserved.
//

import Foundation
import UIKit

public protocol BottomSheetDataSource {
    func numberOfSections(in bottomSheetController: BottomSheetController) -> Int
    func bottomSheetController(_ controller: BottomSheetController, numberOfItemsInSection section: Int) -> Int
    func bottomSheetController(_ controller: BottomSheetController, viewForHeaderInSection section: Int) -> UIView?
    func bottomSheetController(_ controller: BottomSheetController, viewForFooterInSection section: Int) -> UIView?
    func bottomSheetController(_ controller: BottomSheetController, cellForItemAt indexPath: IndexPath) -> UITableViewCell
}

public extension BottomSheetDelegate {
    func numberOfSections(in bottomSheetController: BottomSheetController) -> Int {
        return 0
    }
    
    func bottomSheetController(_ controller: BottomSheetController, numberOfItemsInSection section: Int) -> Int {
        return 0
    }
    
    func bottomSheetController(_ controller: BottomSheetController, viewForHeaderInSection section: Int) -> UIView? {
        return nil
    }
    
    func bottomSheetController(_ controller: BottomSheetController, viewForFooterInSection section: Int) -> UIView? {
        return nil
    }
}
