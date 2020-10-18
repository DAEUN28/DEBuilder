//
//  BarButtonItemBuilder.swift
//  DEBuilder
//
//  Created by DaEun Kim on 2020/10/14.
//

import UIKit

public class BarButtonItemBuilder<Element: UIBarButtonItem>: BarItemBuilder<Element> {

  // MARK: Property

  private var target: AnyObject?
  private var action: Selector?
  private var style: UIBarButtonItem.Style = .plain
  private var possibleTitles: Set<String>?
  private var width: CGFloat = 0
  private var customView: UIView?
  private var tintColor: UIColor?

  // MARK: BuilderType

  override public func build() -> Element {
    let element = super.build()
      .with(\.target, setTo: target)
      .with(\.action, setTo: action)
      .with(\.style, setTo: style)
      .with(\.possibleTitles, setTo: possibleTitles)
      .with(\.width, setTo: width)
      .with(\.customView, setTo: customView)
      .with(\.tintColor, setTo: tintColor)

    return element
  }

  // MARK: Builder Method

  func withTarget(_ target: AnyObject?) -> BarButtonItemBuilder {
    self.target = target
    return self
  }

  func withAction(_ action: Selector?) -> BarButtonItemBuilder {
    self.action = action
    return self
  }

  func withStyle(_ style: UIBarButtonItem.Style) -> BarButtonItemBuilder {
    self.style = style
    return self
  }

  func withPossibleTitles(_ titles: Set<String>?) -> BarButtonItemBuilder {
    self.possibleTitles = titles
    return self
  }

  func withWidth(_ width: CGFloat) -> BarButtonItemBuilder {
    self.width = width
    return self
  }

  func withCustomView(_ view: UIView?) -> BarButtonItemBuilder {
    self.customView = view
    return self
  }

  func withTintColor(_ color: UIColor?) -> BarButtonItemBuilder {
    self.tintColor = color
    return self
  }
}
