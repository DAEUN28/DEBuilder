//
//  ControlBuilder.swift
//  DEBuilder
//
//  Created by DaEun Kim on 2020/10/13.
//

import UIKit

public class ControlBuilder<Element: UIControl>: ViewBuilder<Element> {

  typealias Target = (Any?, Selector, UIControl.Event)

  // MARK: Properties

  private var isEnabled: Bool = true
  private var isSelected: Bool = false
  private var isHighlighted: Bool = false
  private var contentVerticalAlignment: UIControl.ContentVerticalAlignment = .top
  private var contentHorizontalAlignment: UIControl.ContentHorizontalAlignment = .center

  private var targets: [Target] = []

  public override func build() -> Element {
    let element = super.build()
      .with(\.isEnabled, setTo: isEnabled)
      .with(\.isSelected, setTo: isSelected)
      .with(\.isHighlighted, setTo: isHighlighted)

    for target in targets {
      element.addTarget(target.0, action: target.1, for: target.2)
    }
    return element
  }

  func withEnabled(_ isEnabled: Bool) -> ControlBuilder {
    self.isEnabled = isEnabled
    return self
  }

  func withSelected(_ isSelected: Bool) -> ControlBuilder {
    self.isSelected = isSelected
    return self
  }

  func withHighlighted(_ isHighlighted: Bool) -> ControlBuilder {
    self.isHighlighted = isHighlighted
    return self
  }

  func withContentVerticalAlignment(_ alignment: UIControl.ContentVerticalAlignment)
  -> ControlBuilder {
    self.contentVerticalAlignment = alignment
    return self
  }

  func withContentHorizontalAlignment(_ alignment: UIControl.ContentHorizontalAlignment)
  -> ControlBuilder {
    self.contentHorizontalAlignment = alignment
    return self
  }

  func withTargets(_ targets: [Target]) -> ControlBuilder {
    self.targets = targets
    return self
  }
}

