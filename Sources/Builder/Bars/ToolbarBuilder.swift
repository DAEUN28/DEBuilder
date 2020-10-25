//
//  ToolbarBuilder.swift
//  DEBuilder
//
//  Created by DaEun Kim on 2020/10/14.
//

import UIKit

public class ToolbarBuilder<Element: UIToolbar>: ViewBuilder<Element> {

  // MARK: Property

  private weak var delegate: UIToolbarDelegate?
  private var items: [UIBarButtonItem]?
  private var isTranslucent: Bool = true

  // MARK: BuilderType

  override public func build() -> Element {
    return super.build()
      .with(\.delegate, setTo: delegate)
      .with(\.items, setTo: items)
      .with(\.isTranslucent, setTo: isTranslucent)
  }

  // MARK: Builder Method

  public func withDelegate(_ delegate: UIToolbarDelegate?) -> ToolbarBuilder {
    self.delegate = delegate
    return self
  }

  public func withItems(_ items: [UIBarButtonItem]?) -> ToolbarBuilder {
    self.items = items
    return self
  }

  public func withIsTranslucent(_ isTranslucent: Bool) -> ToolbarBuilder {
    self.isTranslucent = isTranslucent
    return self
  }
}
