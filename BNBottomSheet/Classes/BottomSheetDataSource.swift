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
    
    /// Asks the data source to return the number of sections in the bottom sheet controller.
    ///
    /// If you do not implement this method, the bottom sheet controller configures with one section.
    ///
    /// - Parameter bottomSheetController: An object representing the bottom sheet controller requesting this information.
    func numberOfSections(in bottomSheetController: BottomSheetController) -> Int
    
    
    /// Asks the data source to return the number of sections in the bottom sheet.
    /// - Parameters:
    ///   - controller: The bottom sheet controller object requesting this information.
    ///   - section: An index number identifying a section in `controller`.
    func bottomSheetController(_ controller: BottomSheetController, numberOfItemsInSection section: Int) -> Int
    
    
    /// Asks the delegate for a view object to display in the header of the specified section of the bottom sheet controller.
    ///
    /// Use this method to return a UILabel, UIImageView, or custom view for your header. If you implement this method, you must also implement the bottomSheetController(_:heightForHeaderInSection:) method to specify the height of your custom view.
    ///
    /// - Parameters:
    ///   - controller: The bottom sheet controller asking for the view.
    ///   - section: The index number of the section containing the header view.
    func bottomSheetController(_ controller: BottomSheetController, viewForHeaderInSection section: Int) -> UIView?
    
    
    /// Asks the delegate for a view object to display in the footer of the specified section of the bottom sheet controller.
    ///
    /// Use this method to return a UILabel, UIImageView, or custom view for your footer. If you implement this method, you must also implement the bottomSheetController(_:heightForFooterInSection:) method to specify the height of your custom view.
    ///
    /// - Parameters:
    ///   - controller: The bottom sheet controller asking for the view.
    ///   - section: The index number of the section containing the footer view.
    func bottomSheetController(_ controller: BottomSheetController, viewForFooterInSection section: Int) -> UIView?
    
    
    /**
     Asks the data source for a cell to insert in a particular location of the bottom sheet controller.
     
     In your implementation, create and configure an appropriate cell for the given index path. Create your cell using the bottom sheet controller's dequeueReusableCell(withIdentifier:for:) method, which recycles or creates the cell for you. After creating the cell, update the properties of the cell with appropriate data values.
     Never call this method yourself. If you want to retrieve cells from your table, call the table view's cellForRow(at:) method instead.
     
     - Parameters:
        - controller: A bottom sheet controller object requesting the cell.
        - indexPath: An index path locating a row in `controller`.
     */
    func bottomSheetController(_ controller: BottomSheetController, cellForItemAt indexPath: IndexPath) -> UITableViewCell
}

public extension BottomSheetDataSource {
    
    func numberOfSections(in bottomSheetController: BottomSheetController) -> Int { 1 }
    
    func bottomSheetController(_ controller: BottomSheetController, numberOfItemsInSection section: Int) -> Int { 0 }
    
    func bottomSheetController(_ controller: BottomSheetController, viewForHeaderInSection section: Int) -> UIView? { nil }
    
    func bottomSheetController(_ controller: BottomSheetController, viewForFooterInSection section: Int) -> UIView? { nil }
}
