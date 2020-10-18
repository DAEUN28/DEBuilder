//
//  UIStackView+DEBuilder.swift
//  DEBuilder
//
//  Created by DaEun Kim on 2020/10/18.
//

import UIKit

extension UIStackView {
  public func addArrangedSubviews(_ views: [UIView]) {
    for view in views {
      self.addArrangedSubview(view)
    }
  }
}
