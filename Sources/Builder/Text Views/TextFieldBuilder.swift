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
  private weak var leftView: UIView?
  private var leftViewMode: UITextField.ViewMode = .never
  private weak var rightView: UIView?
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

  public func withDelegate(_ delegate: UITextFieldDelegate) -> TextFieldBuilder {
    self.delegate = delegate
    return self
  }

  public func withText(_ text: String?) -> TextFieldBuilder {
    self.text = text
    return self
  }

  public func withAttributedText(_ text: NSAttributedString?) -> TextFieldBuilder {
    self.attributedText = text
    return self
  }

  public func withPlaceholder(_ text: String?) -> TextFieldBuilder {
    self.placeholder = text
    return self
  }

  public func withAttributedPlaceholder(_ text: NSAttributedString?) -> TextFieldBuilder {
    self.attributedPlaceholder = text
    return self
  }

  public func withFont(_ font: UIFont?) -> TextFieldBuilder {
    self.font = font
    return self
  }

  public func withTextColor(_ color: UIColor?) -> TextFieldBuilder {
    self.textColor = color
    return self
  }

  public func withTextAlignment(_ alignment: NSTextAlignment) -> TextFieldBuilder {
    self.textAlignment = alignment
    return self
  }

  public func withMinimumFontSize(_ size: CGFloat) -> TextFieldBuilder {
    self.minimumFontSize = size
    return self
  }

  public func withClearsOnBeginEditing(_ clearsOnBeginEditing: Bool) -> TextFieldBuilder {
    self.clearsOnBeginEditing = clearsOnBeginEditing
    return self
  }

  public func withClearsOnInsertion(_ clearsOnInsertion: Bool) -> TextFieldBuilder {
    self.clearsOnInsertion = clearsOnInsertion
    return self
  }

  public func withBorderStyle(_ style: UITextField.BorderStyle) -> TextFieldBuilder {
    self.borderStyle = style
    return self
  }

  public func withClearButtonMode(_ mode: UITextField.ViewMode) -> TextFieldBuilder {
    self.clearButtonMode = mode
    return self
  }

  public func withLeftView(_ view: UIView, mode: UITextField.ViewMode) -> TextFieldBuilder {
    self.leftView = view
    self.leftViewMode = mode
    return self
  }

  public func withRightView(_ view: UIView, mode: UITextField.ViewMode) -> TextFieldBuilder {
    self.rightView = view
    self.rightViewMode = mode
    return self
  }

  public func withKeyboardType(_ type: UIKeyboardType) -> TextFieldBuilder {
    self.keyboardType = type
    return self
  }

  public func withKeyboardAppearance(_ appearance: UIKeyboardAppearance) -> TextFieldBuilder {
    self.keyboardAppearance = appearance
    return self
  }

  public func withTextContentType(_ type: UITextContentType?) -> TextFieldBuilder {
    self.textContentType = type
    return self
  }

  public func withEnablesReturnKeyAutomatically(_ isEnabled: Bool) -> TextFieldBuilder {
    self.enablesReturnKeyAutomatically = isEnabled
    return self
  }

  public func withReturnKeyType(_ type: UIReturnKeyType) -> TextFieldBuilder {
    self.returnKeyType = type
    return self
  }
}
