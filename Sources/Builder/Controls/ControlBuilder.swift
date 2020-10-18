//
//  ControlBuilder.swift
//  DEBuilder
//
//  Created by DaEun Kim on 2020/10/13.
//

import UIKit

public class ControlBuilder<Element: UIControl>: ViewBuilder<Element> {

  public typealias Target = (Any?, Selector, UIControl.Event)

  // MARK: Properties

  private var isEnabled: Bool = true
  private var isSelected: Bool = false
  private var isHighlighted: Bool = false
  private var contentVerticalAlignment: UIControl.ContentVerticalAlignment = .top
  private var contentHorizontalAlignment: UIControl.ContentHorizontalAlignment = .center
  private var targets: [Target] = []

  // MARK: Builder Type

  override public func build() -> Element {
    let element = super.build()
      .with(\.isEnabled, setTo: isEnabled)
      .with(\.isSelected, setTo: isSelected)
      .with(\.isHighlighted, setTo: isHighlighted)
      .with(\.contentVerticalAlignment, setTo: contentVerticalAlignment)
      .with(\.contentHorizontalAlignment, setTo: contentHorizontalAlignment)

    for target in targets { element.addTarget(target.0, action: target.1, for: target.2) }
    return element
  }

  // MARK: Builder Method

  public func withEnabled(_ isEnabled: Bool) -> ControlBuilder {
    self.isEnabled = isEnabled
    return self
  }

  public func withSelected(_ isSelected: Bool) -> ControlBuilder {
    self.isSelected = isSelected
    return self
  }

  public func withHighlighted(_ isHighlighted: Bool) -> ControlBuilder {
    self.isHighlighted = isHighlighted
    return self
  }

  public func withContentVerticalAlignment(_ alignment: UIControl.ContentVerticalAlignment)
  -> ControlBuilder {
    self.contentVerticalAlignment = alignment
    return self
  }

  public func withContentHorizontalAlignment(_ alignment: UIControl.ContentHorizontalAlignment)
  -> ControlBuilder {
    self.contentHorizontalAlignment = alignment
    return self
  }

  public func withTargets(_ targets: [Target]) -> ControlBuilder {
    self.targets = targets
    return self
  }
}

