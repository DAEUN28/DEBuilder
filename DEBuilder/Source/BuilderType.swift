//
//  BuilderType.swift
//  DEBuilder
//
//  Created by DaEun Kim on 2020/10/12.
//

import Foundation

protocol BuilderType {
    associatedtype Product
    
    func build() -> Product
}
