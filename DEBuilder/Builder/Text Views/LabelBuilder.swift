//
//  LabelBuilder.swift
//  DEBuilder
//
//  Created by DaEun Kim on 2020/10/14.
//

import UIKit

public class LabelBuilder<Element: UILabel>: ViewBuilder<Element> {

  // MARK: Propereties

  private var text: String?
  private var attributedText: NSAttributedString?
  private var font: UIFont?
  private var textColor: UIColor?
  private var textAlignment: NSTextAlignment = .natural
  private var lineBreakMode: NSLineBreakMode = .byTruncatingTail
  private var numberOfLines: Int = 1

  // MARK: BuilderType

  override public func build() -> Element {
    let label = super.build()
    label.text = text
    if let text = attributedText { label.attributedText = text }
    if let font = font { label.font = font }
    label.textColor = textColor
    label.textAlignment = textAlignment
    label.lineBreakMode = lineBreakMode
    label.numberOfLines = numberOfLines
    return label
  }

  // MARK: Builder Methods

  func withText(_ text: String?) -> LabelBuilder {
    self.text = text
    return self
  }

  func withAttributedText(_ text: NSAttributedString?) -> LabelBuilder {
    self.attributedText = text
    return self
  }

  func withFont(_ font: UIFont?) -> LabelBuilder {
    self.font = font
    return self
  }

  func withTextColor(_ color: UIColor?) -> LabelBuilder {
    self.textColor = color
    return self
  }

  func withTextAlignment(_ alignment: NSTextAlignment) -> LabelBuilder {
    self.textAlignment = alignment
    return self
  }

  func withLineBreakMode(_ mode: NSLineBreakMode) -> LabelBuilder {
    self.lineBreakMode = mode
    return self
  }

  func withNumberOfLines(_ lines: Int) -> LabelBuilder {
    self.numberOfLines = lines
    return self
  }
}
