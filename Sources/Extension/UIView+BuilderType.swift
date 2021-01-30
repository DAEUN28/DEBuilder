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

public extension UINavigationBar {
  typealias Builder = NavigationBarBuilder
}

public extension UIToolbar {
  typealias Builder = ToolbarBuilder
}

public extension UISearchBar {
  typealias Builder = SearchBarBuilder
}

public extension UITabBar {
  typealias Builder = TabBarBuilder
}

public extension UIBarItem {
  typealias Builder = BarItemBuilder
}

public extension UIBarButtonItem {
  typealias Builder = BarButtonItemBuilder
}

// MARK: Container Views

public extension UIScrollView {
  typealias Builder = ScrollViewBuilder
}

public extension UIStackView {
  typealias Builder = StackViewBuilder
}

public extension UICollectionView {
  typealias Builder = CollectionViewBuilder
}

public extension UITableView {
  typealias Builder = TableViewBuilder
}

// MARK: Content Views

public extension UIActivityIndicatorView {
  typealias Builder = ActivityIndicatorViewBuilder
}

public extension UIImageView {
  typealias Builder = ImageViewBuilder
}

public extension UIPickerView {
  typealias Builder = PickerViewBuilder
}

public extension UIProgressView {
  typealias Builder = ProgressViewBuilder
}

// MARK: Controls

public extension UIButton {
  typealias Builder = ButtonBuilder
}

public extension UIControl {
  typealias Builder = ControlBuilder
}

public extension UIDatePicker {
  typealias Builder = DatePickerBuilder
}

public extension UIPageControl {
  typealias Builder = PageControlBuilder
}

public extension UISegmentedControl {
  typealias Builder = SegmentedControlBuilder
}

public extension UISlider {
  typealias Builder = SliderBuilder
}

public extension UIStepper {
  typealias Builder = StepperBuilder
}

public extension UISwitch {
  typealias Builder = SwitchBuilder
}

// MARK: Text Views

public extension UILabel {
  typealias Builder = LabelBuilder
}

public extension UITextField {
  typealias Builder = TextFieldBuilder
}

public extension UITextView {
  typealias Builder = TextViewBuilder
}
