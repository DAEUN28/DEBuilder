//
//  BarItemBuilder.swift
//  DEBuilder
//
//  Created by DaEun Kim on 2020/10/17.
//

import UIKit

public class BarItemBuilder<Element: UIBarItem>: BuilderType {

  // MARK: Property

  private var title: String?
  private var image: UIImage?
  private var imageInsets: UIEdgeInsets = .zero
  private var isEnabled: Bool = true
  private var tag: Int = 0

  // MARK: BuilderType

  public func build() -> Element {
    return Element()
      .with(\.title, setTo: title)
      .with(\.image, setTo: image)
      .with(\.imageInsets, setTo: imageInsets)
      .with(\.isEnabled, setTo: isEnabled)
      .with(\.tag, setTo: tag)
  }

  // MARK: Builder Method

  public func withTitle(_ title: String?) -> BarItemBuilder {
    self.title = title
    return self
  }

  public func withImage(_ image: UIImage?) -> BarItemBuilder {
    self.image = image
    return self
  }

  public func withImageInsets(_ insets: UIEdgeInsets) -> BarItemBuilder {
    self.imageInsets = insets
    return self
  }

  public func withEnabled(_ isEnabled: Bool) -> BarItemBuilder {
    self.isEnabled = isEnabled
    return self
  }

  public func withTag(_ tag: Int) -> BarItemBuilder {
    self.tag = tag
    return self
  }
}
