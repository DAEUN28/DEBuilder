//
//  TabBarBuilder.swift
//  DEBuilder
//
//  Created by DaEun Kim on 2020/10/14.
//

import UIKit

public class TabBarBuilder<Element: UITabBar>: ViewBuilder<Element> {

  // MARK: Property

  private weak var delegate: UITabBarDelegate?
  private var items: [UITabBarItem]?
  private var selectedItem: UITabBarItem?
  private var isTranslucent: Bool = true

  // MARK: BuilderType

  override public func build() -> Element {
    return super.build()
      .with(\.delegate, setTo: delegate)
      .with(\.items, setTo: items)
      .with(\.selectedItem, setTo: selectedItem)
      .with(\.isTranslucent, setTo: isTranslucent)
  }

  // MARK: Builder Method

  public func withDelegate(_ delegate: UITabBarDelegate?) -> TabBarBuilder {
    self.delegate = delegate
    return self
  }

  public func withItems(_ items: [UITabBarItem]?) -> TabBarBuilder {
    self.items = items
    return self
  }

  public func withSelectedItem(_ selectedItem: UITabBarItem?) -> TabBarBuilder {
    self.selectedItem = selectedItem
    return self
  }

  public func withIsTranslucent(_ isTranslucent: Bool) -> TabBarBuilder {
    self.isTranslucent = isTranslucent
    return self
  }
}
