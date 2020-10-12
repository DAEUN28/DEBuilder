//
//  ButtonBuilder.swift
//  DEBuilder
//
//  Created by DaEun Kim on 2020/10/12.
//

import UIKit

final public class ButtonBuilder: ViewBuilder {

    private var title: String?
    private var attributedTitle: String?
    private var titleColor: UIColor?
    private var image: UIImage?

    override func build() -> UIButton {
        let button = UIButton()

        return button
    }

    func withTitle(_ title: String?, for state: UIControl.State? = nil) -> ButtonBuilder {
        
        return self
    }
}
