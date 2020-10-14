//
//  ImageViewBuilder.swift
//  DEBuilder
//
//  Created by DaEun Kim on 2020/10/14.
//

import UIKit

public class ImageViewBuilder<Element: UIImageView>: ViewBuilder<Element> {

  // MARK: Propereties

  private var image: UIImage?

  // MARK: BuilderType

  override public func build() -> Element {
    let imageView = super.build()
    imageView.image = image
    return imageView
  }

  // MARK: Builder Method

  func withImage(_ image: UIImage?) -> ImageViewBuilder {
    self.image = image
    return self
  }
}
