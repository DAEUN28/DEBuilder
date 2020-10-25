//
//  StepperBuilder.swift
//  DEBuilder
//
//  Created by DaEun Kim on 2020/10/14.
//

import UIKit

public class StepperBuilder<Element: UIStepper>: ControlBuilder<Element> {

  // MARK: Property

  private var isContinuous: Bool = true
  private var autorepeat: Bool = true
  private var wraps: Bool = false
  private var minimumValue: Double = 0
  private var maximumValue: Double = 0
  private var stepValue: Double = 0
  private var value: Double = 0
  private var backgroundImage: States<UIImage> = []
  private var decrementImage: States<UIImage> = []
  private var dividerImage: DividerStates = []
  private var incrementImage: States<UIImage> = []

  // MARK: BuilderType

  override public func build() -> Element {
    let element = super.build()
      .with(\.isContinuous, setTo: isContinuous)
      .with(\.autorepeat, setTo: autorepeat)
      .with(\.wraps, setTo: wraps)
      .with(\.minimumValue, setTo: minimumValue)
      .with(\.maximumValue, setTo: maximumValue)
      .with(\.stepValue, setTo: stepValue)
      .with(\.value, setTo: value)

    for (image, state) in backgroundImage { element.setBackgroundImage(image, for: state) }
    for (image, state) in decrementImage { element.setDecrementImage(image, for: state) }
    for (image, state) in incrementImage { element.setIncrementImage(image, for: state) }
    for (image, leftState, rightState) in dividerImage {
      element.setDividerImage(image, forLeftSegmentState: leftState, rightSegmentState: rightState)
    }

    return element
  }

  // MARK: Builder Method

  public func withContinuous(_ isContinuous: Bool) -> StepperBuilder {
    self.isContinuous = isContinuous
    return self
  }

  public func withAutorepeat(_ autorepeat: Bool) -> StepperBuilder {
    self.autorepeat = autorepeat
    return self
  }

  public func withWraps(_ wraps: Bool) -> StepperBuilder {
    self.wraps = wraps
    return self
  }

  public func withMinimumValue(_ minimumValue: Double) -> StepperBuilder {
    self.minimumValue = minimumValue
    return self
  }

  public func withMaximumValue(_ maximumValue: Double) -> StepperBuilder {
    self.maximumValue = maximumValue
    return self
  }

  public func withStepValue(_ stepValue: Double) -> StepperBuilder {
    self.stepValue = stepValue
    return self
  }

  public func withValue(_ value: Double) -> StepperBuilder {
    self.value = value
    return self
  }

  public func withBackgroundImage(_ backgroundImage: States<UIImage>) -> StepperBuilder {
    self.backgroundImage = backgroundImage
    return self
  }

  public func withDecrementImage(_ decrementImage: States<UIImage>) -> StepperBuilder {
    self.decrementImage = decrementImage
    return self
  }

  public func withDividerImage(_ dividerImage: DividerStates) -> StepperBuilder {
    self.dividerImage = dividerImage
    return self
  }

  public func withIncrementImage(_ incrementImage: States<UIImage>) -> StepperBuilder {
    self.incrementImage = incrementImage
    return self
  }
}
