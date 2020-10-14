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
  private var distribution: UIStackView.Distribution = .fill
  private var spacing: CGFloat = 0

  // MARK: BuilderType

  override public func build() -> Element {
    let stackView = super.build()
    for subview in arrangedSubview {
      stackView.addArrangedSubview(subview)
    }
    stackView.alignment = alignment
    stackView.axis = axis
    stackView.distribution = distribution
    stackView.spacing = spacing
    return stackView
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

  func withDistribution(_ distribution: UIStackView.Distribution) -> StackViewBuilder {
    self.distribution = distribution
    return self
  }

  func withSpacing(_ spacing: CGFloat) -> StackViewBuilder {
    self.spacing = spacing
    return self
  }
}
