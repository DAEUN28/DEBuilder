//
//  ViewBuilder.swift
//  DEBuilder
//
//  Created by DaEun Kim on 2020/10/12.
//

import UIKit

public class ViewBuilder<Element: UIView>: BuilderType {

  // MARK: Properties

  private var frame: CGRect = .zero
  private var backgroundColor: UIColor?
  private var isHidden: Bool = false
  private var alpha: CGFloat = 1
  private var isOpaque: Bool = false
  private var tintColor: UIColor?
  private var clipsToBounds: Bool = false
  private var isUserInteractionEnabled: Bool = true
  private var isMultipleTouchEnabled: Bool = false
  private var contentMode: UIView.ContentMode = .scaleToFill
  private var translatesAutoresizingMaskIntoConstraints: Bool = true
  private var semanticContentAttribute: UISemanticContentAttribute = .unspecified
  private var gestureRecognizers: [UIGestureRecognizer]? = []
  private var tag: Int = 0

  private var subviews: [UIView] = []
  private var sublayers: [CALayer] = []
  private var cornerRadius: CGFloat = 0
  private var borderWidth: CGFloat = 0
  private var borderColor: UIColor?

  // MARK: BuilderType

  public func build() -> Element {
    let element = Element(frame: frame)
      .with(\.backgroundColor, setTo: backgroundColor)
      .with(\.isHidden, setTo: isHidden)
      .with(\.alpha, setTo: alpha)
      .with(\.isOpaque, setTo: isOpaque)
      .with(\.tintColor, setTo: tintColor)
      .with(\.clipsToBounds, setTo: clipsToBounds)
      .with(\.isUserInteractionEnabled, setTo: isUserInteractionEnabled)
      .with(\.isMultipleTouchEnabled, setTo: isMultipleTouchEnabled)
      .with(\.contentMode, setTo: contentMode)
      .with(\.translatesAutoresizingMaskIntoConstraints, setTo: translatesAutoresizingMaskIntoConstraints)
      .with(\.semanticContentAttribute, setTo: semanticContentAttribute)
      .with(\.gestureRecognizers, setTo: gestureRecognizers)
      .with(\.tag, setTo: tag)

    for subview in subviews {
      element.addSubview(subview)
    }
    element.layer.sublayers = sublayers
    element.layer.cornerRadius = cornerRadius
    element.layer.borderWidth = borderWidth
    element.layer.borderColor = borderColor?.cgColor
    return element
  }

  // MARK: Builder Method

  func withFrame(_ frame: CGRect) -> ViewBuilder {
    self.frame = frame
    return self
  }

  func withBackgroundColor(_ color: UIColor?) -> ViewBuilder {
    self.backgroundColor = color
    return self
  }

  func withHidden(_ isHidden: Bool) -> ViewBuilder {
    self.isHidden = isHidden
    return self
  }

  func withAlpha(_ alpha: CGFloat) -> ViewBuilder {
    self.alpha = alpha
    return self
  }

  func withOpaque(_ isOpaque: Bool) -> ViewBuilder {
    self.isOpaque = isOpaque
    return self
  }

  func withTintColor(_ color: UIColor?) -> ViewBuilder {
    self.tintColor = color
    return self
  }

  func withClipsToBounds(_ clipsToBounds: Bool) -> ViewBuilder {
    self.clipsToBounds = clipsToBounds
    return self
  }

  func withUserInteractionEnabled(_ isEnabled: Bool) -> ViewBuilder {
    self.isUserInteractionEnabled = isEnabled
    return self
  }

  func withMultipleTouchEnabled(_ isEnabled: Bool) -> ViewBuilder {
    self.isMultipleTouchEnabled = isEnabled
    return self
  }

  func withContentMode(_ mode: UIView.ContentMode) -> ViewBuilder {
    self.contentMode = mode
    return self
  }

  func withTranslatesAutoresizingMaskIntoConstraints(_ isEnabled: Bool) -> ViewBuilder {
    self.translatesAutoresizingMaskIntoConstraints = isEnabled
    return self
  }

  func disableTranlatesAutoresizing() -> ViewBuilder {
    self.translatesAutoresizingMaskIntoConstraints = false
    return self
  }

  func withSemanticContentAttribute(_ attribute: UISemanticContentAttribute) -> ViewBuilder {
    self.semanticContentAttribute = attribute
    return self
  }

  func withGestureRecognizers(_ gestureRecognizers: [UIGestureRecognizer]?) -> ViewBuilder {
    self.gestureRecognizers = gestureRecognizers
    return self
  }

  func withTag(_ tag: Int) -> ViewBuilder {
    self.tag = tag
    return self
  }

  func withSubviews(_ views: [UIView]) -> ViewBuilder {
    self.subviews = views
    return self
  }

  func withSublayers(_ layers: [CALayer]) -> ViewBuilder {
    self.sublayers = layers
    return self
  }

  func withCornerRadius(_ radius: CGFloat) -> ViewBuilder {
    self.cornerRadius = radius
    return self
  }

  func withBorderWidth(_ width: CGFloat) -> ViewBuilder {
    self.borderWidth = width
    return self
  }

  func withBorderColor(_ color: UIColor?) -> ViewBuilder {
    self.borderColor = color
    return self
  }
}
