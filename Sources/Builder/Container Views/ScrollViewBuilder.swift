//
//  ScrollViewBuilder.swift
//  DEBuilder
//
//  Created by DaEun Kim on 2020/10/14.
//

import UIKit

public class ScrollViewBuilder<Element: UIScrollView>: ViewBuilder<Element> {

  // MARK: Property

  private weak var delegate: UIScrollViewDelegate?
  private var contentSize: CGSize = .zero
  private var contentOffset: CGPoint = .zero
  private var contentInset: UIEdgeInsets = .zero
  private var contentInsetAdjustmentBehavior: UIScrollView.ContentInsetAdjustmentBehavior = .automatic
  private var isScrollEnabled: Bool = true
  private var isDirectionalLockEnabled: Bool = false
  private var isPagingEnabled: Bool = false
  private var scrollsToTop: Bool = true
  private var bounces: Bool = true
  private var alwaysBounceVertical: Bool = false
  private var alwaysBounceHorizontal: Bool = false
  private var indicatorStyle: UIScrollView.IndicatorStyle = .default
  private var showsHorizontalScrollIndicator: Bool = true
  private var showsVerticalScrollIndicator: Bool = true
  private var refreshControl: UIRefreshControl?
  private var delaysContentTouches: Bool = true
  private var zoomScale: CGFloat = 1
  private var maximumZoomScale: CGFloat = 1
  private var minimumZoomScale: CGFloat = 1
  private var keyboardDismissMode: UIScrollView.KeyboardDismissMode = .none
  private var indexDisplayMode: UIScrollView.IndexDisplayMode = .automatic

  // MARK: BuilderType

  override public func build() -> Element {
    return super.build()
      .with(\.delegate, setTo: delegate)
      .with(\.contentSize, setTo: contentSize)
      .with(\.contentOffset, setTo: contentOffset)
      .with(\.contentInset, setTo: contentInset)
      .with(\.contentInsetAdjustmentBehavior, setTo: contentInsetAdjustmentBehavior)
      .with(\.isScrollEnabled, setTo: isScrollEnabled)
      .with(\.isDirectionalLockEnabled, setTo: isDirectionalLockEnabled)
      .with(\.isPagingEnabled, setTo: isPagingEnabled)
      .with(\.scrollsToTop, setTo: scrollsToTop)
      .with(\.bounces, setTo: bounces)
      .with(\.alwaysBounceVertical, setTo: alwaysBounceVertical)
      .with(\.alwaysBounceHorizontal, setTo: alwaysBounceHorizontal)
      .with(\.indicatorStyle, setTo: indicatorStyle)
      .with(\.showsHorizontalScrollIndicator, setTo: showsHorizontalScrollIndicator)
      .with(\.showsVerticalScrollIndicator, setTo: showsVerticalScrollIndicator)
      .with(\.refreshControl, setTo: refreshControl)
      .with(\.delaysContentTouches, setTo: delaysContentTouches)
      .with(\.zoomScale, setTo: zoomScale)
      .with(\.maximumZoomScale, setTo: maximumZoomScale)
      .with(\.minimumZoomScale, setTo: minimumZoomScale)
      .with(\.keyboardDismissMode, setTo: keyboardDismissMode)
      .with(\.indexDisplayMode, setTo: indexDisplayMode)
  }

  // MARK: Builder Method

  public func withDelegate(_ delegate: UIScrollViewDelegate?) -> ScrollViewBuilder {
    self.delegate = delegate
    return self
  }

  public func withContentSize(_ contentSize: CGSize) -> ScrollViewBuilder {
    self.contentSize = contentSize
    return self
  }

  public func withContentOffset(_ contentOffset: CGPoint) -> ScrollViewBuilder {
    self.contentOffset = contentOffset
    return self
  }

  public func withContentInset(_ contentInset: UIEdgeInsets) -> ScrollViewBuilder {
    self.contentInset = contentInset
    return self
  }

  public func withContentInsetAdjustmentBehavior(
    _ contentInsetAdjustmentBehavior: UIScrollView.ContentInsetAdjustmentBehavior
  ) -> ScrollViewBuilder {
    self.contentInsetAdjustmentBehavior = contentInsetAdjustmentBehavior
    return self
  }

  public func withScrollEnabled(_ isScrollEnabled: Bool) -> ScrollViewBuilder {
    self.isScrollEnabled = isScrollEnabled
    return self
  }

  public func withDirectionalLockEnabled(_ isDirectionalLockEnabled: Bool) -> ScrollViewBuilder {
    self.isDirectionalLockEnabled = isDirectionalLockEnabled
    return self
  }

  public func withPagingEnabled(_ isPagingEnabled: Bool) -> ScrollViewBuilder {
    self.isPagingEnabled = isPagingEnabled
    return self
  }

  public func withScrollsToTop(_ scrollsToTop: Bool) -> ScrollViewBuilder {
    self.scrollsToTop = scrollsToTop
    return self
  }

  public func withBounces(_ bounces: Bool) -> ScrollViewBuilder {
    self.bounces = bounces
    return self
  }

  public func withAlwaysBounceVertical(_ alwaysBounceVertical: Bool) -> ScrollViewBuilder {
    self.alwaysBounceVertical = alwaysBounceVertical
    return self
  }

  public func withAlwaysBounceHorizontal(_ alwaysBounceHorizontal: Bool) -> ScrollViewBuilder {
    self.alwaysBounceHorizontal = alwaysBounceHorizontal
    return self
  }

  public func withIndicatorStyle(_ indicatorStyle: UIScrollView.IndicatorStyle) -> ScrollViewBuilder {
    self.indicatorStyle = indicatorStyle
    return self
  }

  public func withShowsHorizontalScrollIndicator(
    _ showsHorizontalScrollIndicator: Bool
  ) -> ScrollViewBuilder {
    self.showsHorizontalScrollIndicator = showsHorizontalScrollIndicator
    return self
  }

  public func withShowsVerticalScrollIndicator(
    _ showsVerticalScrollIndicator: Bool
  ) -> ScrollViewBuilder {
    self.showsVerticalScrollIndicator = showsVerticalScrollIndicator
    return self
  }

  public func withRefreshControl(_ refreshControl: UIRefreshControl?) -> ScrollViewBuilder {
    self.refreshControl = refreshControl
    return self
  }

  public func withDelaysContentTouches(_ delaysContentTouches: Bool) -> ScrollViewBuilder {
    self.delaysContentTouches = delaysContentTouches
    return self
  }

  public func withZoomScale(_ zoomScale: CGFloat) -> ScrollViewBuilder {
    self.zoomScale = zoomScale
    return self
  }

  public func withMaximumZoomScale(_ maximumZoomScale: CGFloat) -> ScrollViewBuilder {
    self.maximumZoomScale = maximumZoomScale
    return self
  }

  public func withMinimumZoomScale(_ minimumZoomScale: CGFloat) -> ScrollViewBuilder {
    self.minimumZoomScale = minimumZoomScale
    return self
  }

  public func withKeyboardDismissMode(
    _ keyboardDismissMode: UIScrollView.KeyboardDismissMode
  ) -> ScrollViewBuilder {
    self.keyboardDismissMode = keyboardDismissMode
    return self
  }

  public func withIndexDisplayMode(
    _ indexDisplayMode: UIScrollView.IndexDisplayMode
  ) -> ScrollViewBuilder {
    self.indexDisplayMode = indexDisplayMode
    return self
  }
}
