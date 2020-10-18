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
  private var isEnabled = true
  private var adjustsFontSizeToFitWidth = false
  private var minimumScaleFactor: CGFloat = 0
  private var numberOfLines = 1

  // MARK: BuilderType

  override public func build() -> Element {
    return super.build()
      .with(\.text, setTo: text)
      .with(\.attributedText, setTo: attributedText)
      .with(\.font, setTo: font)
      .with(\.textColor, setTo: textColor)
      .with(\.textAlignment, setTo: textAlignment)
      .with(\.lineBreakMode, setTo: lineBreakMode)
      .with(\.isEnabled, setTo: isEnabled)
      .with(\.adjustsFontSizeToFitWidth, setTo: adjustsFontSizeToFitWidth)
      .with(\.minimumScaleFactor, setTo: minimumScaleFactor)
      .with(\.numberOfLines, setTo: numberOfLines)
  }

  // MARK: Builder Method

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

  func withEnabled(_ isEnabled: Bool) -> LabelBuilder {
    self.isEnabled = isEnabled
    return self
  }

  func withAdjustFontSizeToFitWidth(_ adjustsFontSizeToFitWidth: Bool) -> LabelBuilder {
    self.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth
    return self
  }

  func withMinimumScaleFactor(_ scale: CGFloat) -> LabelBuilder {
    self.minimumScaleFactor = scale
    return self
  }

  func withNumberOfLines(_ lines: Int) -> LabelBuilder {
    self.numberOfLines = lines
    return self
  }
}
