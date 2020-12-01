//
//  ViewInstaller.swift
//  BNBottomSheet
//
//  Created by Botirjon Nasridinov on 01/12/20.
//

import UIKit.UIView

protocol ViewInstaller: class {
    /// The parent (root) view of all subviews
    var mainView: UIView { get }
    
    /// Additional parameter to setup subviews
    var parameter: Any? { get }
    
    /// Initializes, then embeds subviews. Finally, adds constraints of subviews
    func setupSubviews()
    
    /// Initializes all subview elements
    func initSubviews()
    
    /// Places each subview to its super-view
    func embedSubviews()
    
    /// Adds constraints of placed subviews
    func addSubviewsConstraints()
    
    /// Localizes all texts that should be translated into local langugage
    func localizeText()
    
    var layoutMargins: UIEdgeInsets { get }
}


extension ViewInstaller {
    
    var parameter: Any? { nil }
    var layoutMargins: UIEdgeInsets { .zero }
    
    func setupSubviews() {
        initSubviews()
        embedSubviews()
        addSubviewsConstraints()
    }
    
    func initSubviews() {
        fatalError("Implementation pending...")
    }
    
    func embedSubviews() {
        fatalError("Implementation pending...")
    }
    
    func addSubviewsConstraints() {
        fatalError("Implementation pending...")
    }
    
    func localizeText() {
        fatalError("Implementation pending...")
    }
}
