//
//  SwitchBuilder.swift
//  DEBuilder
//
//  Created by DaEun Kim on 2020/10/14.
//

import UIKit

public class SwitchBuilder<Element: UISwitch>: ControlBuilder<Element> {

  // MARK: Property

  private var isOn = true
  private var onTintColor: UIColor?
  private var thumbTintColor: UIColor?
  private var onImage: UIImage?
  private var offImage: UIImage?

  // MARK: BuilderType

  override public func build() -> Element {
    return super.build()
      .with(\.isOn, setTo: isOn)
      .with(\.onTintColor, setTo: onTintColor)
      .with(\.thumbTintColor, setTo: thumbTintColor)
      .with(\.onImage, setTo: onImage)
      .with(\.offImage, setTo: offImage)
  }

  // MARK: Builder Method
  
  func withOn(_ isOn: Bool) -> SwitchBuilder {
    self.isOn = isOn
    return self
  }

  func withOnTintColor(_ color: UIColor?) -> SwitchBuilder {
    self.onTintColor = color
    return self
  }

  func withThumbTintColor(_ color: UIColor?) -> SwitchBuilder {
    self.thumbTintColor = color
    return self
  }

  func withOnImage(_ image: UIImage?) -> SwitchBuilder {
    self.onImage = image
    return self
  }

  func withOffImage(_ image: UIImage?) -> SwitchBuilder {
    self.offImage = image
    return self
  }
}
