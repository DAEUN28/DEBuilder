//
//  PageControlBuilder.swift
//  DEBuilder
//
//  Created by DaEun Kim on 2020/10/14.
//

import UIKit

public class PageControlBuilder<Element: UIPageControl>: ControlBuilder<Element> {

  // MARK: Property

  private var currentPage: Int = 0
  private var numberOfPages: Int = 0
  private var hidesForSinglePage: Bool = false
  private var pageIndicatorTintColor: UIColor?
  private var currentPageIndicatorTintColor: UIColor?

  // MARK: BuilderType

  override public func build() -> Element {
    return super.build()
      .with(\.currentPage, setTo: currentPage)
      .with(\.numberOfPages, setTo: numberOfPages)
      .with(\.hidesForSinglePage, setTo: hidesForSinglePage)
      .with(\.pageIndicatorTintColor, setTo: pageIndicatorTintColor)
      .with(\.currentPageIndicatorTintColor, setTo: currentPageIndicatorTintColor)
  }

  // MARK: Builder Method

  public func withCurrentPage(_ currentPage: Int) -> PageControlBuilder {
    self.currentPage = currentPage
    return self
  }

  public func withNumberOfPages(_ numberOfPages: Int) -> PageControlBuilder {
    self.numberOfPages = numberOfPages
    return self
  }
  public func withHidesForSinglePage(_ hidesForSinglePage: Bool) -> PageControlBuilder {
    self.hidesForSinglePage = hidesForSinglePage
    return self
  }
  public func withPageIndicatorTintColor(_ pageIndicatorTintColor: UIColor?) -> PageControlBuilder {
    self.pageIndicatorTintColor = pageIndicatorTintColor
    return self
  }

  public func withCurrentPageIndicatorTintColor(
    _ currentPageIndicatorTintColor: UIColor?
  ) -> PageControlBuilder {
    self.currentPageIndicatorTintColor = currentPageIndicatorTintColor
    return self
  }
}
