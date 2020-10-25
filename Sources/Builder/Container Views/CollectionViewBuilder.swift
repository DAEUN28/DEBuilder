//
//  CollectionViewBuilder.swift
//  DEBuilder
//
//  Created by DaEun Kim on 2020/10/25.
//

import UIKit

public class CollectionViewBuilder<Element: UICollectionView>: ScrollViewBuilder<Element> {

  public typealias ReuseView = (AnyClass?, String)

  // MARK: Propereties

  private weak var dataSource: UICollectionViewDataSource?
  private var isPrefetchingEnabled: Bool = true
  private weak var prefetchDataSource: UICollectionViewDataSourcePrefetching?
  private weak var delegate: UICollectionViewDelegate?
  private var cells: [ReuseView] = []
  private var backgroundView: UIView?
  private var collectionViewLayout: UICollectionViewLayout?
  private weak var dragDelegate: UICollectionViewDragDelegate?
  private weak var dropDelegate: UICollectionViewDropDelegate?
  private var reorderingCadence: UICollectionView.ReorderingCadence = .immediate
  private var allowsSelection: Bool = true
  private var allowsMultipleSelection: Bool = false

  // MARK: BuilderType

  override public func build() -> Element {
    let element = super.build()
      .with(\.dataSource, setTo: dataSource)
      .with(\.isPrefetchingEnabled, setTo: isPrefetchingEnabled)
      .with(\.prefetchDataSource, setTo: prefetchDataSource)
      .with(\.delegate, setTo: delegate)
      .with(\.backgroundView, setTo: backgroundView)
      .with(\.dragDelegate, setTo: dragDelegate)
      .with(\.dropDelegate, setTo: dropDelegate)
      .with(\.reorderingCadence, setTo: reorderingCadence)
      .with(\.allowsSelection, setTo: allowsSelection)
      .with(\.allowsMultipleSelection, setTo: allowsMultipleSelection)

    for cell in cells {
      element.register(cell.0, forCellWithReuseIdentifier: cell.1)
    }
    if let collectionViewLayout = collectionViewLayout {
      element.collectionViewLayout = collectionViewLayout
    }

    return element
  }

  // MARK: Builder Method

  public func withDataSource(_ dataSource: UICollectionViewDataSource?) -> CollectionViewBuilder {
    self.dataSource = dataSource
    return self
  }

  public func withPrefetchingEnabled(_ isPrefetchingEnabled: Bool) -> CollectionViewBuilder {
    self.isPrefetchingEnabled = isPrefetchingEnabled
    return self
  }

  public func withPrefetchDataSource(
    _ prefetchDataSource: UICollectionViewDataSourcePrefetching?
  ) -> CollectionViewBuilder {
    self.prefetchDataSource = prefetchDataSource
    return self
  }

  public func withDelegate(_ delegate: UICollectionViewDelegate?) -> CollectionViewBuilder {
    self.delegate = delegate
    return self
  }

  public func withCells(_ cells: [ReuseView]) -> CollectionViewBuilder {
    self.cells = cells
    return self
  }

  public func withBackgroundView(_ backgroundView: UIView?) -> CollectionViewBuilder {
    self.backgroundView = backgroundView
    return self
  }

  public func withCollectionViewLayout(
    _ collectionViewLayout: UICollectionViewLayout?
  ) -> CollectionViewBuilder {
    self.collectionViewLayout = collectionViewLayout
    return self
  }

  public func withDragDelegate(
    _ dragDelegate: UICollectionViewDragDelegate?
  ) -> CollectionViewBuilder {
    self.dragDelegate = dragDelegate
    return self
  }

  public func withDropDelegate(
    _ dropDelegate: UICollectionViewDropDelegate?
  ) -> CollectionViewBuilder {
    self.dropDelegate = dropDelegate
    return self
  }

  public func withReorderingCadence(
    _ reorderingCadence: UICollectionView.ReorderingCadence
  ) -> CollectionViewBuilder {
    self.reorderingCadence = reorderingCadence
    return self
  }

  public func withAllowsSelection(_ allowsSelection: Bool) -> CollectionViewBuilder {
    self.allowsSelection = allowsSelection
    return self
  }

  public func withAllowsMultipleSelection(
    _ allowsMultipleSelection: Bool
  ) -> CollectionViewBuilder {
    self.allowsMultipleSelection = allowsMultipleSelection
    return self
  }
}
