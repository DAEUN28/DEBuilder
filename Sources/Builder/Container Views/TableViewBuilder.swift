//
//  TableViewBuilder.swift
//  DEBuilder
//
//  Created by DaEun Kim on 2020/10/25.
//

import UIKit

public class TableViewBuilder<Element: UITableView>: ScrollViewBuilder<Element> {

  public typealias ReuseView = (AnyClass?, String)

  // MARK: Propereties

  private weak var dataSource: UITableViewDataSource?
  private weak var prefetchDataSource: UITableViewDataSourcePrefetching?
  private var cells: [ReuseView] = []
  private var headerFooterViews: [ReuseView] = []
  private weak var delegate: UITableViewDelegate?
  private var tableHeaderView: UIView?
  private var tableFooterView: UIView?
  private var backgroundView: UIView?
  private var insetsContentViewsToSafeArea: Bool = true
  private var separatorStyle: UITableViewCell.SeparatorStyle = .singleLine
  private var separatorColor: UIColor?
  private var separatorEffect: UIVisualEffect?
  private var separatorInset: UIEdgeInsets = .zero
  private var allowsSelection: Bool = true
  private var allowsMultipleSelection: Bool = false
  private var sectionIndexMinimumDisplayRowCount: Int = 0
  private var sectionIndexColor: UIColor?
  private var sectionIndexBackgroundColor: UIColor?
  private var sectionIndexTrackingBackgroundColor: UIColor?
  private weak var dragDelegate: UITableViewDragDelegate?
  private weak var dropDelegate: UITableViewDropDelegate?
  private var isEditing: Bool = false

  // MARK: BuilderType

  override public func build() -> Element {
    let element = super.build()
      .with(\.dataSource, setTo: dataSource)
      .with(\.prefetchDataSource, setTo: prefetchDataSource)
      .with(\.delegate, setTo: delegate)
      .with(\.tableHeaderView, setTo: tableHeaderView)
      .with(\.tableFooterView, setTo: tableFooterView)
      .with(\.backgroundView, setTo: backgroundView)
      .with(\.insetsContentViewsToSafeArea, setTo: insetsContentViewsToSafeArea)
      .with(\.separatorStyle, setTo: separatorStyle)
      .with(\.separatorColor, setTo: separatorColor)
      .with(\.separatorEffect, setTo: separatorEffect)
      .with(\.separatorInset, setTo: separatorInset)
      .with(\.allowsSelection, setTo: allowsSelection)
      .with(\.allowsMultipleSelection, setTo: allowsMultipleSelection)
      .with(\.sectionIndexMinimumDisplayRowCount, setTo: sectionIndexMinimumDisplayRowCount)
      .with(\.sectionIndexColor, setTo: sectionIndexColor)
      .with(\.sectionIndexBackgroundColor, setTo: sectionIndexBackgroundColor)
      .with(\.sectionIndexTrackingBackgroundColor, setTo: sectionIndexTrackingBackgroundColor)
      .with(\.dragDelegate, setTo: dragDelegate)
      .with(\.dropDelegate, setTo: dropDelegate)
      .with(\.isEditing, setTo: isEditing)

    for cell in cells {
      element.register(cell.0, forCellReuseIdentifier: cell.1)
    }
    for view in headerFooterViews {
      element.register(view.0, forHeaderFooterViewReuseIdentifier: view.1)
    }

    return element
  }

  // MARK: Builder Method

  public func withDataSource(_ dataSource: UITableViewDataSource?) -> TableViewBuilder {
    self.dataSource = dataSource
    return self
  }

  public func withPrefetchDataSource(
    _ prefetchDataSource: UITableViewDataSourcePrefetching?
  ) -> TableViewBuilder {
    self.prefetchDataSource = prefetchDataSource
    return self
  }

  public func withCells(_ cells: [ReuseView]) -> TableViewBuilder {
    self.cells = cells
    return self
  }

  public func withHeaderFooterViews(_ headerFooterViews: [ReuseView]) -> TableViewBuilder {
    self.headerFooterViews = headerFooterViews
    return self
  }

  public func withDelegate(_ delegate: UITableViewDelegate?) -> TableViewBuilder {
    self.delegate = delegate
    return self
  }

  public func withTableHeaderView(_ tableHeaderView: UIView?) -> TableViewBuilder {
    self.tableHeaderView = tableHeaderView
    return self
  }

  public func withTableFooterView(_ tableFooterView: UIView?) -> TableViewBuilder {
    self.tableFooterView = tableFooterView
    return self
  }

  public func withBackgroundView(_ backgroundView: UIView?) -> TableViewBuilder {
    self.backgroundView = backgroundView
    return self
  }

  public func withInsetsContentViewsToSafeArea(
    _ insetsContentViewsToSafeArea: Bool
  ) -> TableViewBuilder {
    self.insetsContentViewsToSafeArea = insetsContentViewsToSafeArea
    return self
  }

  public func withSeparatorStyle(
    _ separatorStyle: UITableViewCell.SeparatorStyle
  ) -> TableViewBuilder {
    self.separatorStyle = separatorStyle
    return self
  }

  public func withSeparatorColor(_ separatorColor: UIColor?) -> TableViewBuilder {
    self.separatorColor = separatorColor
    return self
  }

  public func withSeparatorEffect(_ separatorEffect: UIVisualEffect?) -> TableViewBuilder {
    self.separatorEffect = separatorEffect
    return self
  }

  public func withSeparatorInset(_ separatorInset: UIEdgeInsets) -> TableViewBuilder {
    self.separatorInset = separatorInset
    return self
  }

  public func withAllowsSelection(_ allowsSelection: Bool) -> TableViewBuilder {
    self.allowsSelection = allowsSelection
    return self
  }

  public func withAllowsMultipleSelection(_ allowsMultipleSelection: Bool) -> TableViewBuilder {
    self.allowsMultipleSelection = allowsMultipleSelection
    return self
  }

  public func withSectionIndexMinimumDisplayRowCount(
    _ sectionIndexMinimumDisplayRowCount: Int
  ) -> TableViewBuilder {
    self.sectionIndexMinimumDisplayRowCount = sectionIndexMinimumDisplayRowCount
    return self
  }

  public func withSectionIndexColor(_ sectionIndexColor: UIColor?) -> TableViewBuilder {
    self.sectionIndexColor = sectionIndexColor
    return self
  }

  public func withSectionIndexBackgroundColor(
    _ sectionIndexBackgroundColor: UIColor?
  ) -> TableViewBuilder {
    self.sectionIndexBackgroundColor = sectionIndexBackgroundColor
    return self
  }

  public func withSectionIndexTrackingBackgroundColor(
    _ sectionIndexTrackingBackgroundColor: UIColor?
  ) -> TableViewBuilder {
    self.sectionIndexTrackingBackgroundColor = sectionIndexTrackingBackgroundColor
    return self
  }

  public func withDragDelegate(_ dragDelegate: UITableViewDragDelegate?) -> TableViewBuilder {
    self.dragDelegate = dragDelegate
    return self
  }

  public func withDropDelegate(_ dropDelegate: UITableViewDropDelegate?) -> TableViewBuilder {
    self.dropDelegate = dropDelegate
    return self
  }

  public func withIsEditing(_ isEditing: Bool) -> TableViewBuilder {
    self.isEditing = isEditing
    return self
  }
}
