//
//  With.swift
//  DEBuilder
//
//  Created by DaEun Kim on 2020/10/14.
//

import Foundation

public protocol With { }

public extension With where Self: AnyObject {
  @discardableResult
  public func with<T>(_ property: ReferenceWritableKeyPath<Self, T>, setTo value: T) -> Self {
    self[keyPath: property] = value
    return self
  }
}
