//
//  CALayer+DEBuilder.swift
//  DEBuilder
//
//  Created by DaEun Kim on 2020/10/17.
//

import UIKit

extension CALayer {

  func roundCorners(_ radius: CGFloat, _ maskedCorners: CACornerMask? = nil) {
    self.cornerRadius = radius
    if let corners = maskedCorners { self.maskedCorners = corners }
  }
}
