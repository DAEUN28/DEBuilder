//
//  ButtonBuilder.swift
//  DEBuilder
//
//  Created by DaEun Kim on 2020/10/12.
//

import UIKit

public class ButtonBuilder<Element: UIButton>: ViewBuilder<Element> {

  // MARK: Propereties

  private var button = UIButton()

  // MARK: BuilderType

  public override func build() -> Element {
    let button = super.build()
    button.setTitle(self.button.title(for: .normal), for: .normal)
    button.setTitle(self.button.title(for: .selected), for: .selected)
    button.setAttributedTitle(self.button.attributedTitle(for: .normal), for: .normal)
    button.setAttributedTitle(self.button.attributedTitle(for: .selected), for: .normal)
    button.setTitleColor(self.button.titleColor(for: .normal), for: .normal)
    button.setTitleColor(self.button.titleColor(for: .selected), for: .selected)
    button.setImage(self.button.image(for: .normal), for: .normal)
    button.setImage(self.button.image(for: .selected), for: .selected)
    button.titleLabel?.font = self.button.titleLabel?.font
    button.titleLabel?.textAlignment = self.button.titleLabel?.textAlignment ?? .natural
    return button
  }

  // MARK: Builder Methods

  func withTitle(_ title: String?, for state: UIControl.State = .normal) -> ButtonBuilder {
    button.setTitle(title, for: state)
    return self
  }

  func withAttributedTitle(_ title: NSAttributedString?,
                           for state: UIControl.State = .normal) -> ButtonBuilder {
    button.setAttributedTitle(title, for: state)
    return self
  }

  func withTitleColor(_ color: UIColor?, for state: UIControl.State = .normal) -> ButtonBuilder {
    button.setTitleColor(color, for: state)
    return self
  }

  func withImage(_ image: UIImage?, for state: UIControl.State = .normal) -> ButtonBuilder {
    button.setImage(image, for: state)
    return self
  }

  func withFont(_ font: UIFont?) -> ButtonBuilder {
    button.titleLabel?.font = font
    return self
  }

  func withTextAlignment(_ alignment: NSTextAlignment) -> ButtonBuilder {
    button.titleLabel?.textAlignment = alignment
    return self
  }
}

