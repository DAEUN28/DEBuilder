//
//  TextFieldBuilder.swift
//  DEBuilder
//
//  Created by DaEun Kim on 2020/10/14.
//

import UIKit

public class TextFieldBuilder<Element: UITextField>: ControlBuilder<Element> {

  // MARK: Propereties

  private weak var delegate: UITextFieldDelegate?
  private var text: String?
  private var attributedText: NSAttributedString?
  private var placeholder: String?
  private var attributedPlaceholder: NSAttributedString?
  private var font: UIFont?
  private var textColor: UIColor?
  private var textAlignment: NSTextAlignment = .natural
  private var minimumFontSize: CGFloat = 0
  private var clearsOnBeginEditing = false
  private var clearsOnInsertion = false
  private var borderStyle: UITextField.BorderStyle = .none
  private var clearButtonMode: UITextField.ViewMode = .never
  private var leftView: UIView?
  private var leftViewMode: UITextField.ViewMode = .never
  private var rightView: UIView?
  private var rightViewMode: UITextField.ViewMode = .never

  private var keyboardType: UIKeyboardType = .default
  private var keyboardAppearance: UIKeyboardAppearance = .default
  private var textContentType: UITextContentType?
  private var enablesReturnKeyAutomatically = false
  private var returnKeyType: UIReturnKeyType = .default


  // MARK: BuilderType

  override public func build() -> Element {
    return super.build()
      .with(\.delegate, setTo: delegate)
      .with(\.attributedText, setTo: attributedText)
      .with(\.text, setTo: text)
      .with(\.attributedPlaceholder, setTo: attributedPlaceholder)
      .with(\.font, setTo: font)
      .with(\.textColor, setTo: textColor)
      .with(\.textAlignment, setTo: textAlignment)
      .with(\.minimumFontSize, setTo: minimumFontSize)
      .with(\.clearsOnBeginEditing, setTo: clearsOnBeginEditing)
      .with(\.clearsOnInsertion, setTo: clearsOnInsertion)
      .with(\.borderStyle, setTo: borderStyle)
      .with(\.clearButtonMode, setTo: clearButtonMode)
      .with(\.leftView, setTo: leftView)
      .with(\.leftViewMode, setTo: leftViewMode)
      .with(\.rightView, setTo: rightView)
      .with(\.rightViewMode, setTo: rightViewMode)
      .with(\.keyboardType, setTo: keyboardType)
      .with(\.keyboardAppearance, setTo: keyboardAppearance)
      .with(\.textContentType, setTo: textContentType)
      .with(\.enablesReturnKeyAutomatically, setTo: enablesReturnKeyAutomatically)
      .with(\.returnKeyType, setTo: returnKeyType)
  }

  // MARK: Builder Methods

  func withDelegate(_ delegate: UITextFieldDelegate) -> TextFieldBuilder {
    self.delegate = delegate
    return self
  }

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

  func withMinimumFontSize(_ size: CGFloat) -> TextFieldBuilder {
    self.minimumFontSize = size
    return self
  }

  func withClearsOnBeginEditing(_ clearsOnBeginEditing: Bool) -> TextFieldBuilder {
    self.clearsOnBeginEditing = clearsOnBeginEditing
    return self
  }

  func withClearsOnInsertion(_ clearsOnInsertion: Bool) -> TextFieldBuilder {
    self.clearsOnInsertion = clearsOnInsertion
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

  func withLeftView(_ view: UIView, mode: UITextField.ViewMode) -> TextFieldBuilder {
    self.leftView = view
    self.leftViewMode = mode
    return self
  }

  func withRightView(_ view: UIView, mode: UITextField.ViewMode) -> TextFieldBuilder {
    self.rightView = view
    self.rightViewMode = mode
    return self
  }

  func withKeyboardType(_ type: UIKeyboardType) -> TextFieldBuilder {
    self.keyboardType = type
    return self
  }

  func withKeyboardAppearance(_ appearance: UIKeyboardAppearance) -> TextFieldBuilder {
    self.keyboardAppearance = appearance
    return self
  }

  func withTextContentType(_ type: UITextContentType?) -> TextFieldBuilder {
    self.textContentType = type
    return self
  }

  func withEnablesReturnKeyAutomatically(_ isEnabled: Bool) -> TextFieldBuilder {
    self.enablesReturnKeyAutomatically = isEnabled
    return self
  }

  func withReturnKeyType(_ type: UIReturnKeyType) -> TextFieldBuilder {
    self.returnKeyType = type
    return self
  }
}
