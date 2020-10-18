//
//  StackViewBuilder.swift
//  DEBuilder
//
//  Created by DaEun Kim on 2020/10/14.
//

import UIKit

public class StackViewBuilder<Element: UIStackView>: ViewBuilder<Element> {

  // MARK: Propereties

  private var arrangedSubview: [UIView] = []
  private var alignment: UIStackView.Alignment = .fill
  private var axis: NSLayoutConstraint.Axis = .horizontal
  private var isBaselineRelativeArrangement = false
  private var distribution: UIStackView.Distribution = .fill
  private var isLayoutMarginsRelativeArrangement = false
  private var spacing: CGFloat = 0
  private var customSpacing: [(CGFloat, UIView)] = []

  // MARK: BuilderType

  override public func build() -> Element {
    let element = super.build()
      .with(\.alignment, setTo: alignment)
      .with(\.axis, setTo: axis)
      .with(\.isBaselineRelativeArrangement, setTo: isBaselineRelativeArrangement)
      .with(\.distribution, setTo: distribution)
      .with(\.isLayoutMarginsRelativeArrangement, setTo: isLayoutMarginsRelativeArrangement)
      .with(\.spacing, setTo: spacing)

    element.addArrangedSubviews(arrangedSubview)
    for (spacing, view) in customSpacing { element.setCustomSpacing(spacing, after: view) }

    return element
  }

  // MARK: Builder Method

  func withArrangedSubviews(_ subviews: [UIView]) -> StackViewBuilder {
    self.arrangedSubview = subviews
    return self
  }

  func withAlignment(_ alignment: UIStackView.Alignment) -> StackViewBuilder {
    self.alignment = alignment
    return self
  }

  func withAxis(_ axis: NSLayoutConstraint.Axis) -> StackViewBuilder {
    self.axis = axis
    return self
  }

  func withBaselineRelativeArrangement(_ isBaselineRelativeArrangement: Bool) -> StackViewBuilder {
    self.isBaselineRelativeArrangement = isBaselineRelativeArrangement
    return self
  }

  func withDistribution(_ distribution: UIStackView.Distribution) -> StackViewBuilder {
    self.distribution = distribution
    return self
  }

  func withLayoutMarginsRelativeArrangement(_ isLayoutMarginsRelativeArrangement: Bool) -> StackViewBuilder {
    self.isLayoutMarginsRelativeArrangement = isLayoutMarginsRelativeArrangement
    return self
  }

  func withSpacing(_ spacing: CGFloat) -> StackViewBuilder {
    self.spacing = spacing
    return self
  }

  func withCustomSpacing(_ customSpacing: [(CGFloat, UIView)]) -> StackViewBuilder {
    self.customSpacing = customSpacing
    return self
  }
}
