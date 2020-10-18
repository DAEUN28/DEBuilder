//
//  UIView+BuilderType.swift
//  DEBuilder
//
//  Created by DaEun Kim on 2020/10/14.
//

import UIKit

public extension UIView {
  typealias Builder = ViewBuilder
}

// MARK: Bars

// MARK: Container Views

public extension UIStackView {
  typealias Builder = StackViewBuilder
}

// MARK: Content Views

public extension UIImageView {
  typealias Builder = ImageViewBuilder
}

// MARK: Controls

public extension UIControl {
  typealias Builder = ControlBuilder
}

public extension UIButton {
  typealias Builder = ButtonBuilder
}

// MARK: Text Views

public extension UILabel {
  typealias Builder = LabelBuilder
}

public extension UITextField {
  typealias Builder = TextFieldBuilder
}
