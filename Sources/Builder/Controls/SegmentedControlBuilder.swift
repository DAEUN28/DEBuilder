//
//  SegmentedControlBuilder.swift
//  DEBuilder
//
//  Created by DaEun Kim on 2020/10/14.
//

import UIKit

public class SegmentedControlBuilder<Element: UISegmentedControl>: ControlBuilder<Element> {

  public typealias Segments<T> = [(T?, Int)]
  public typealias StatesWithMetrics = [(UIImage, UIControl.State, UIBarMetrics)]
  public typealias DividerStatesWithMetrics
    = [(UIImage?, UIControl.State, UIControl.State, UIBarMetrics)]

  // MARK: Property

  private var image: Segments<UIImage> = []
  private var title: Segments<String> = []
  private var selectedSegmentIndex: Int = -1
  private var isMomentary: Bool = false
  private var backgroundImage: StatesWithMetrics = []
  private var dividerImage: DividerStatesWithMetrics = []
  private var titleTextAttributes: States<[NSAttributedStringKey: Any]> = []

  // MARK: BuilderType

  override public func build() -> Element {
    let element = super.build()
      .with(\.selectedSegmentIndex, setTo: selectedSegmentIndex)
      .with(\.isMomentary, setTo: isMomentary)

    for (image, state) in image { element.setImage(image, forSegmentAt: state) }
    for (title, state) in title { element.setTitle(title, forSegmentAt: state) }
    for (image, state, metrics) in backgroundImage {
      element.setBackgroundImage(image, for: state, barMetrics: metrics)
    }
    for (image, leftState, rightState, metrics) in dividerImage {
      element.setDividerImage(image,
                              forLeftSegmentState: leftState,
                              rightSegmentState: rightState,
                              barMetrics: metrics)
    }
    for (image, state, metrics) in backgroundImage {
      element.setBackgroundImage(image, for: state, barMetrics: metrics)
    }
    for (attributes, state) in titleTextAttributes {
      element.setTitleTextAttributes(attributes, for: state)
    }


    return element
  }

  // MARK: Builder Method

  public func withImage(_ image: Segments<UIImage>) -> SegmentedControlBuilder {
    self.image = image
    return self
  }

  public func withTitle(_ title: Segments<String>) -> SegmentedControlBuilder {
    self.title = title
    return self
  }

  public func withSelectedSegmentIndex(_ selectedSegmentIndex: Int) -> SegmentedControlBuilder {
    self.selectedSegmentIndex = selectedSegmentIndex
    return self
  }

  public func withMomentary(_ isMomentary: Bool) -> SegmentedControlBuilder {
    self.isMomentary = isMomentary
    return self
  }

  public func withBackgroundImage(_ backgroundImage: StatesWithMetrics) -> SegmentedControlBuilder {
    self.backgroundImage = backgroundImage
    return self
  }

  public func withDividerImage(_ dividerImage: DividerStatesWithMetrics) -> SegmentedControlBuilder {
    self.dividerImage = dividerImage
    return self
  }

  public func withTitleTextAttributes(
    _ titleTextAttributes: States<[NSAttributedStringKey: Any]>
  ) -> SegmentedControlBuilder {
    self.titleTextAttributes = titleTextAttributes
    return self
  }
}
