//
//  UIView+DEBuilder.swift
//  DEBuilder
//
//  Created by DaEun Kim on 2020/10/17.
//

import UIKit

public extension UIView {
  func addSubviews(_ views: [UIView]) {
    views.forEach { self.addSubview($0) }
  }
}
