//
//  SliderBuilder.swift
//  DEBuilder
//
//  Created by DaEun Kim on 2020/10/14.
//

import UIKit

public class SliderBuilder<Element: UISlider>: ControlBuilder<Element> {

  // MARK: Property

  private var value: Float = 0
  private var minimumValue: Float = 0
  private var maximumValue: Float = 1
  private var isContinuous: Bool = true
  private var minimumValueImage: UIImage?
  private var maximumValueImage: UIImage?
  private var minimumTrackTintColor: UIColor?
  private var minimumTrackImage: States<UIImage> = []
  private var maximumTrackTintColor: UIColor?
  private var maximumTrackImage: States<UIImage> = []
  private var thumbTintColor: UIColor?
  private var thumbImage: States<UIImage> = []

  // MARK: BuilderType

  override public func build() -> Element {
    let element = super.build()
      .with(\.value, setTo: value)
      .with(\.minimumValue, setTo: minimumValue)
      .with(\.maximumValue, setTo: maximumValue)
      .with(\.isContinuous, setTo: isContinuous)
      .with(\.minimumValueImage, setTo: minimumValueImage)
      .with(\.maximumValueImage, setTo: maximumValueImage)
      .with(\.minimumTrackTintColor, setTo: minimumTrackTintColor)
      .with(\.maximumTrackTintColor, setTo: maximumTrackTintColor)
      .with(\.thumbTintColor, setTo: thumbTintColor)

    for (image, state) in minimumTrackImage { element.setMinimumTrackImage(image, for: state) }
    for (image, state) in maximumTrackImage { element.setMaximumTrackImage(image, for: state) }
    for (image, state) in thumbImage { element.setThumbImage(image, for: state) }

    return element
  }

  // MARK: Builder Method

  public func withValue(_ value: Float) -> SliderBuilder {
    self.value = value
    return self
  }

  public func withMinimumValue(_ minimumValue: Float) -> SliderBuilder {
    self.minimumValue = minimumValue
    return self
  }

  public func withMaximumValue(_ maximumValue: Float) -> SliderBuilder {
    self.maximumValue = maximumValue
    return self
  }

  public func withContinuous(_ isContinuous: Bool) -> SliderBuilder {
    self.isContinuous = isContinuous
    return self
  }

  public func withMinimumValueImage(_ minimumValueImage: UIImage?) -> SliderBuilder {
    self.minimumValueImage = minimumValueImage
    return self
  }

  public func withMaximumValueImage(_ maximumValueImage: UIImage?) -> SliderBuilder {
    self.maximumValueImage = maximumValueImage
    return self
  }

  public func withMinimumTrackTintColor(_ minimumTrackTintColor: UIColor?) -> SliderBuilder {
    self.minimumTrackTintColor = minimumTrackTintColor
    return self
  }

  public func withMinimumTrackImage(_ minimumTrackImage: States<UIImage>) -> SliderBuilder {
    self.minimumTrackImage = minimumTrackImage
    return self
  }

  public func withMaximumTrackTintColor(_ maximumTrackTintColor: UIColor?) -> SliderBuilder {
    self.maximumTrackTintColor = maximumTrackTintColor
    return self
  }

  public func withMaximumTrackImage(_ maximumTrackImage: States<UIImage>) -> SliderBuilder {
    self.maximumTrackImage = maximumTrackImage
    return self
  }

  public func withThumbTintColor(_ thumbTintColor: UIColor?) -> SliderBuilder {
    self.thumbTintColor = thumbTintColor
    return self
  }

  public func withThumbImage(_ thumbImage: States<UIImage>) -> SliderBuilder {
    self.thumbImage = thumbImage
    return self
  }
}
