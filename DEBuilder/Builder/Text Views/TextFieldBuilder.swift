//
//  TextFieldBuilder.swift
//  DEBuilder
//
//  Created by DaEun Kim on 2020/10/14.
//

import UIKit

public class TextFieldBuilder<Element: UITextField>: ControlBuilder<Element> {

  // MARK: Propereties

  private var text: String?
  private var attributedText: NSAttributedString?
  private var placeholder: String?
  private var attributedPlaceholder: NSAttributedString?
  private var font: UIFont?
  private var textColor: UIColor?
  private var textAlignment: NSTextAlignment = .natural
  private var borderStyle: UITextField.BorderStyle = .none
  private var clearButtonMode: UITextField.ViewMode = .never
  private var returnKeyType: UIReturnKeyType = .default
  private weak var delegate: UITextFieldDelegate?

  // MARK: BuilderType

  override public func build() -> Element {
    let textField = super.build()
    textField.text = text
    if let text = attributedText { textField.attributedText = text }
    textField.placeholder = placeholder
    if let placeholder = attributedPlaceholder { textField.attributedPlaceholder = placeholder }
    if let font = font { textField.font = font }
    textField.textColor = textColor
    textField.textAlignment = textAlignment
    textField.borderStyle = borderStyle
    textField.clearButtonMode = clearButtonMode
    textField.returnKeyType = returnKeyType
    textField.delegate = delegate
    return textField
  }

  // MARK: Builder Methods

  func withText(_ text: String?) -> TextFieldBuilder {
    self.text = text
    return self
  }

  func withAttributedText(_ text: NSAttributedString?) -> TextFieldBuilder {
    self.attributedText = text
    return self
  }

  func withPlaceholder(_ text: String?) -> TextFieldBuilder {
    self.placeholder = text
    return self
  }

  func withAttributedPlaceholder(_ text: NSAttributedString?) -> TextFieldBuilder {
    self.attributedPlaceholder = text
    return self
  }

  func withFont(_ font: UIFont?) -> TextFieldBuilder {
    self.font = font
    return self
  }

  func withTextColor(_ color: UIColor?) -> TextFieldBuilder {
    self.textColor = color
    return self
  }

  func withTextAlignment(_ alignment: NSTextAlignment) -> TextFieldBuilder {
    self.textAlignment = alignment
    return self
  }

  func withBorderStyle(_ style: UITextField.BorderStyle) -> TextFieldBuilder {
    self.borderStyle = style
    return self
  }

  func withClearButtonMode(_ mode: UITextField.ViewMode) -> TextFieldBuilder {
    self.clearButtonMode = mode
    return self
  }

  func withReturnKeyType(_ type: UIReturnKeyType) -> TextFieldBuilder {
    self.returnKeyType = type
    return self
  }

  func withDelegate(_ delegate: UITextFieldDelegate) -> TextFieldBuilder {
    self.delegate = delegate
    return self
  }
}
