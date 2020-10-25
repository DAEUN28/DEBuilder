//
//  NavigationBarBuilder.swift
//  DEBuilder
//
//  Created by DaEun Kim on 2020/10/14.
//

import UIKit

public class NavigationBarBuilder<Element: UINavigationBar>: ViewBuilder<Element> {

  // MARK: Property

  private weak var delegate: UINavigationBarDelegate?
  private var items: [UINavigationItem]?
  private var prefersLargeTitles: Bool = false
  private var isTranslucent: Bool = true

  // MARK: BuilderType

  override public func build() -> Element {
    return super.build()
      .with(\.delegate, setTo: delegate)
      .with(\.items, setTo: items)
      .with(\.prefersLargeTitles, setTo: prefersLargeTitles)
      .with(\.isTranslucent, setTo: isTranslucent)
  }

  // MARK: Builder Method

  public func withDelegate(_ delegate: UINavigationBarDelegate?) -> NavigationBarBuilder {
    self.delegate = delegate
    return self
  }

  public func withItems(_ items: [UINavigationItem]?) -> NavigationBarBuilder {
    self.items = items
    return self
  }

  public func withPrefersLargeTitles(_ prefersLargeTitles: Bool) -> NavigationBarBuilder {
    self.prefersLargeTitles = prefersLargeTitles
    return self
  }

  public func withIsTranslucent(_ isTranslucent: Bool) -> NavigationBarBuilder {
    self.isTranslucent = isTranslucent
    return self
  }
}
