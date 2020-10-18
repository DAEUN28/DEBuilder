//
//  BuilderType.swift
//  DEBuilder
//
//  Created by DaEun Kim on 2020/10/12.
//

import Foundation

public protocol BuilderType {
  associatedtype Product
  
  public func build() -> Product
}
