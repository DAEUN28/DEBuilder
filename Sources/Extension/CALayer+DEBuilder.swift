//
//  CALayer+DEBuilder.swift
//  DEBuilder
//
//  Created by DaEun Kim on 2020/10/17.
//

import UIKit

extension CALayer {
  public func roundCorners(_ radius: CGFloat, _ maskedCorners: CACornerMask? = nil) {
    cornerRadius = radius
    if let corners = maskedCorners { self.maskedCorners = corners }
  }
}
