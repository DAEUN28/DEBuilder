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
  private var highlightedImage: UIImage?
  private var animationImages: [UIImage]?
  private var highlightedAnimationImages: [UIImage]?
  private var animationDuration: TimeInterval = 0
  private var animationRepeatCount = 0
  private var isHighlighted = false

  // MARK: BuilderType

  override public func build() -> Element {
    return super.build()
      .with(\.image, setTo: image)
      .with(\.highlightedImage, setTo: highlightedImage)
      .with(\.animationImages, setTo: animationImages)
      .with(\.highlightedAnimationImages, setTo: highlightedAnimationImages)
      .with(\.animationDuration, setTo: animationDuration)
      .with(\.animationRepeatCount, setTo: animationRepeatCount)
      .with(\.isHighlighted, setTo: isHighlighted)
  }

  // MARK: Builder Method

  public func withImage(_ image: UIImage?) -> ImageViewBuilder {
    self.image = image
    return self
  }

  public func withHighlightedImage(_ image: UIImage?) -> ImageViewBuilder {
    self.highlightedImage = image
    return self
  }

  public func withAnimationImages(_ images: [UIImage]?) -> ImageViewBuilder {
    self.animationImages = images
    return self
  }

  public func withHighlightedAnimationImagess(_ images: [UIImage]?) -> ImageViewBuilder {
    self.highlightedAnimationImages = images
    return self
  }

  public func withAnimationDuration(_ duration: TimeInterval) -> ImageViewBuilder {
    self.animationDuration = duration
    return self
  }

  public func withAnimationRepeatCount(_ count: Int) -> ImageViewBuilder {
    self.animationRepeatCount = count
    return self
  }

  public func withHighlighted(_ isHighlighted: Bool) -> ImageViewBuilder {
    self.isHighlighted = isHighlighted
    return self
  }
}
