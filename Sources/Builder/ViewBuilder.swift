//
//  ViewBuilder.swift
//  DEBuilder
//
//  Created by DaEun Kim on 2020/10/12.
//

import UIKit

public class ViewBuilder<Element: UIView>: BuilderType {

  // MARK: Property

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

  // layer
  private var cornerRadius: CGFloat = 0
  private var maskedCorners: CACornerMask?
  private var borderWidth: CGFloat = 0
  private var borderColor: UIColor?
  private var shadowOpacity: Float = 0
  private var shadowRadius: CGFloat = 3
  private var shadowOffset: CGSize = CGSize(width: 0, height: -3)
  private var shadowColor: UIColor?
  private var spread: CGFloat = 0
  private var sublayers: [CALayer] = []

  // MARK: Initalize

  public init() { }

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
    element.addSubviews(subviews)

    // layer
    element.layer
      .with(\.cornerRadius, setTo: cornerRadius)
      .with(\.maskedCorners, setTo: maskedCorners ?? CACornerMask())
      .with(\.borderWidth, setTo: borderWidth)
      .with(\.borderColor, setTo: borderColor?.cgColor)
      .with(\.shadowOpacity, setTo: shadowOpacity)
      .with(\.shadowRadius, setTo: shadowRadius)
      .with(\.shadowOffset, setTo: shadowOffset)
      .with(\.shadowColor, setTo: shadowColor?.cgColor)
      .with(\.sublayers, setTo: sublayers)

    if spread == 0 {
      element.layer.shadowPath = nil
    } else {
      let rect = element.bounds.insetBy(dx: -spread, dy: -spread)
      element.layer.shadowPath = UIBezierPath(rect: rect).cgPath
    }
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

  func withCornerRadius(_ radius: CGFloat, maskedCorners: CACornerMask? = nil) -> ViewBuilder {
    self.cornerRadius = radius
    self.maskedCorners = maskedCorners
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

  func withShadow(_ color: UIColor? = nil,
                  alpha: Float = 0.5,
                  x: CGFloat = 0,
                  y: CGFloat = 2,
                  blur: CGFloat = 4,
                  spread: CGFloat = 0) -> ViewBuilder {
    shadowColor = color
    shadowOpacity = alpha
    shadowOffset = CGSize(width: x, height: y)
    shadowRadius = blur / 2
    self.spread = spread

    return self
  }
}
