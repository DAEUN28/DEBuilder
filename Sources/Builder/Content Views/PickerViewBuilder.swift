//
//  PickerViewBuilder.swift
//  DEBuilder
//
//  Created by DaEun Kim on 2020/10/14.
//

import UIKit

public class PickerViewBuilder<Element: UIPickerView>: ViewBuilder<Element> {

  // MARK: Propereties

  private weak var dataSource: UIPickerViewDataSource?
  private weak var delegate: UIPickerViewDelegate?
  private var defaultRow: (Int, Int, Bool)?

  // MARK: BuilderType

  override public func build() -> Element {
    let element = super.build()
      .with(\.dataSource, setTo: dataSource)
      .with(\.delegate, setTo: delegate)

    if let defaultRow = defaultRow {
      element.selectRow(defaultRow.0, inComponent: defaultRow.1, animated: defaultRow.2)
    }

    return element
  }

  // MARK: Builder Method

  public func withDataSource(_ dataSource: UIPickerViewDataSource?) -> PickerViewBuilder {
    self.dataSource = dataSource
    return self
  }

  public func withDelegate(_ delegate: UIPickerViewDelegate?) -> PickerViewBuilder {
    self.delegate = delegate
    return self
  }

  public func withDefaultRow(_ row: Int, inComponent: Int, animated: Bool) -> PickerViewBuilder {
    self.defaultRow = (row, inComponent, animated)
    return self
  }
}
