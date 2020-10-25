//
//  ActivityIndicatorViewBuilder.swift
//  DEBuilder
//
//  Created by DaEun Kim on 2020/10/14.
//

import UIKit

public class ActivityIndicatorViewBuilder<Element: UIActivityIndicatorView>: ViewBuilder<Element> {

  // MARK: Propereties

  private var hidesWhenStopped: Bool = true
  private var style: UIActivityIndicatorView.Style = .white
  private var color: UIColor?

  // MARK: BuilderType

  override public func build() -> Element {
    return super.build()
      .with(\.hidesWhenStopped, setTo: hidesWhenStopped)
      .with(\.activityIndicatorViewStyle, setTo: style)
      .with(\.color, setTo: color)
  }

  // MARK: Builder Method

  public func withHidesWhenStopped(_ hidesWhenStopped: Bool) -> ActivityIndicatorViewBuilder {
    self.hidesWhenStopped = hidesWhenStopped
    return self
  }

  public func withStyle(_ style: UIActivityIndicatorView.Style) -> ActivityIndicatorViewBuilder {
    self.style = style
    return self
  }

  public func withColor(_ color: UIColor?) -> ActivityIndicatorViewBuilder {
    self.color = color
    return self
  }
}
