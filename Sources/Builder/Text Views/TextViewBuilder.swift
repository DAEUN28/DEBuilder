//
//  TextViewBuilder.swift
//  DEBuilder
//
//  Created by DaEun Kim on 2020/10/14.
//

import UIKit

public class TextViewBuilder<Element: UITextView>: ScrollViewBuilder<Element> {

  // MARK: Property

  private weak var delegate: UITextViewDelegate?
  private var text: String?
  private var attributedText: NSAttributedString?
  private var font: UIFont?
  private var textColor: UIColor?
  private var dataDetectorTypes: UIDataDetectorTypes = UIDataDetectorTypes()
  private var textAlignment: NSTextAlignment = .natural
  private var typingAttributes: [String: Any] = [:]
  private var linkTextAttributes: [String: Any] = [:]
  private var textContainerInset: UIEdgeInsets = .zero
  private var isEditable: Bool = true
  private var allowsEditingTextAttributes: Bool = false
  private var selectedRange: NSRange = NSRange()
  private var clearsOnInsertion: Bool = false
  private var isSelectable: Bool = true
  private var inputView: UIView?
  private var inputAccessoryView: UIView?

  // MARK: BuilderType

  override public func build() -> Element {
    return super.build()
      .with(\.delegate, setTo: delegate)
      .with(\.text, setTo: text)
      .with(\.attributedText, setTo: attributedText)
      .with(\.font, setTo: font)
      .with(\.textColor, setTo: textColor)
      .with(\.dataDetectorTypes, setTo: dataDetectorTypes)
      .with(\.textAlignment, setTo: textAlignment)
      .with(\.typingAttributes, setTo: typingAttributes)
      .with(\.linkTextAttributes, setTo: linkTextAttributes)
      .with(\.textContainerInset, setTo: textContainerInset)
      .with(\.isEditable, setTo: isEditable)
      .with(\.allowsEditingTextAttributes, setTo: allowsEditingTextAttributes)
      .with(\.selectedRange, setTo: selectedRange)
      .with(\.clearsOnInsertion, setTo: clearsOnInsertion)
      .with(\.isSelectable, setTo: isSelectable)
      .with(\.inputView, setTo: inputView)
      .with(\.inputAccessoryView, setTo: inputAccessoryView)
  }

  // MARK: Builder Method

  public func withDelegate(_ delegate: UITextViewDelegate?) -> TextViewBuilder {
    self.delegate = delegate
    return self
  }

  public func withText(_ text: String?) -> TextViewBuilder {
    self.text = text
    return self
  }

  public func withAttributedText(_ attributedText: NSAttributedString?) -> TextViewBuilder {
    self.attributedText = attributedText
    return self
  }

  public func withFont(_ font: UIFont?) -> TextViewBuilder {
    self.font = font
    return self
  }

  public func withTextColor(_ textColor: UIColor?) -> TextViewBuilder {
    self.textColor = textColor
    return self
  }

  public func withDataDetectorTypes(_ dataDetectorTypes: UIDataDetectorTypes) -> TextViewBuilder {
    self.dataDetectorTypes = dataDetectorTypes
    return self
  }

  public func withTextAlignment(_ textAlignment: NSTextAlignment) -> TextViewBuilder {
    self.textAlignment = textAlignment
    return self
  }

  public func withTypingAttributes(_ typingAttributes: [String: Any]) -> TextViewBuilder {
    self.typingAttributes = typingAttributes
    return self
  }

  public func withLinkTextAttributes(_ linkTextAttributes: [String: Any]) -> TextViewBuilder {
    self.linkTextAttributes = linkTextAttributes
    return self
  }

  public func withTextContainerInset(_ textContainerInset: UIEdgeInsets) -> TextViewBuilder {
    self.textContainerInset = textContainerInset
    return self
  }

  public func withEditable(_ isEditable: Bool) -> TextViewBuilder {
    self.isEditable = isEditable
    return self
  }

  public func withAllowsEditingTextAttributes(_ allowsEditingTextAttributes: Bool) -> TextViewBuilder {
    self.allowsEditingTextAttributes = allowsEditingTextAttributes
    return self
  }

  public func withSelectedRange(_ selectedRange: NSRange) -> TextViewBuilder {
    self.selectedRange = selectedRange
    return self
  }

  public func withClearsOnInsertion(_ clearsOnInsertion: Bool) -> TextViewBuilder {
    self.clearsOnInsertion = clearsOnInsertion
    return self
  }

  public func withSelectable(_ isSelectable: Bool) -> TextViewBuilder {
    self.isSelectable = isSelectable
    return self
  }
  public func withInputView(_ inputView: UIView?) -> TextViewBuilder {
    self.inputView = inputView
    return self
  }
  public func withInputAccessoryView(_ inputAccessoryView: UIView?) -> TextViewBuilder {
    self.inputAccessoryView = inputAccessoryView
    return self
  }
}
