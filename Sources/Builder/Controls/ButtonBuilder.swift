//
//  ButtonBuilder.swift
//  DEBuilder
//
//  Created by DaEun Kim on 2020/10/12.
//

import UIKit

public class ButtonBuilder<Element: UIButton>: ViewBuilder<Element> {

  public typealias States<Element> = [(Element?, UIControl.State)]

  // MARK: Propereties

  private var title: States<String> = []
  private var attributedTitle: States<NSAttributedString> = []
  private var titleColor: States<UIColor> = []
  private var titleShadowColor: States<UIColor> = []
  private var reversesTitleShadowWhenHighlighted = false
  private var image: States<UIImage> = []
  private var backgroundImage: States<UIImage> = []
  private var contentEdgeInsets: UIEdgeInsets = .zero
  private var titleEdgeInsets: UIEdgeInsets = .zero
  private var imageEdgeInsets: UIEdgeInsets = .zero

  private var font: UIFont?
  private var textAlignment: NSTextAlignment = .natural

  // MARK: BuilderType

  override public func build() -> Element {
    let element = super.build()
      .with(\.reversesTitleShadowWhenHighlighted, setTo: reversesTitleShadowWhenHighlighted)
      .with(\.contentEdgeInsets, setTo: contentEdgeInsets)
      .with(\.titleEdgeInsets, setTo: titleEdgeInsets)
      .with(\.imageEdgeInsets, setTo: imageEdgeInsets)

    for (title, state) in title { element.setTitle(title, for: state) }
    for (title, state) in attributedTitle { element.setAttributedTitle(title, for: state) }
    for (color, state) in titleColor { element.setTitleColor(color, for: state) }
    for (color, state) in titleShadowColor { element.setTitleShadowColor(color, for: state) }
    for (image, state) in image { element.setImage(image, for: state) }
    for (image, state) in backgroundImage { element.setBackgroundImage(image, for: state) }

    element.titleLabel?
      .with(\.font, setTo: font)
      .with(\.textAlignment, setTo: textAlignment)

    return element
  }

  // MARK: Builder Methods

  public func withTitle(_ title: States<String>) -> ButtonBuilder {
    self.title = title
    return self
  }

  public func withAttributedTitle(_ title: States<NSAttributedString>) -> ButtonBuilder {
    self.attributedTitle = title
    return self
  }

  public func withTitleColor(_ color: States<UIColor>) -> ButtonBuilder {
    self.titleColor = color
    return self
  }

  public func withTitleShadowColor(_ color: States<UIColor>) -> ButtonBuilder {
    self.titleShadowColor = color
    return self
  }

  public func withReversesTitleShadowWhenHighlighted(_ reversesTitleShadowWhenHighlighted: Bool)
  -> ButtonBuilder {
    self.reversesTitleShadowWhenHighlighted = reversesTitleShadowWhenHighlighted
    return self
  }

  public func withImage(_ image: States<UIImage>) -> ButtonBuilder {
    self.image = image
    return self
  }

  public func withBackgroundImage(_ image: States<UIImage>) -> ButtonBuilder {
    self.backgroundImage = image
    return self
  }

  public func withContentEdgeInsets(_ insets: UIEdgeInsets) -> ButtonBuilder {
    self.contentEdgeInsets = insets
    return self
  }

  public func withTitleEdgeInsets(_ insets: UIEdgeInsets) -> ButtonBuilder {
    self.titleEdgeInsets = insets
    return self
  }

  public func withImageEdgeInsets(_ insets: UIEdgeInsets) -> ButtonBuilder {
    self.imageEdgeInsets = insets
    return self
  }

  public func withFont(_ font: UIFont?) -> ButtonBuilder {
    self.font = font
    return self
  }

  public func withTextAlignment(_ alignment: NSTextAlignment) -> ButtonBuilder {
    self.textAlignment = alignment
    return self
  }
}

