//
//  ViewBuilder.swift
//  DEBuilder
//
//  Created by DaEun Kim on 2020/10/12.
//

import UIKit

public class ViewBuilder: BuilderType {

    private var frame: CGRect = .zero
    private var isHidden: Bool = false
    private var alpha: CGFloat = 1
    private var tintColor: UIColor?
    private var cornerRadius: CGFloat?
    private var borderWidth: CGFloat?
    private var borderColor: UIColor?
    private var subViews: [UIView] = []

    func build() -> UIView {
        let view = UIView(frame: frame)
        view.isHidden = isHidden
        view.alpha = alpha
        if let tintColor = tintColor {
            view.tintColor = tintColor
        }
        view.layer.cornerRadius = cornerRadius ?? 0
        view.layer.borderWidth = borderWidth ?? 0
        view.layer.borderColor = borderColor?.cgColor
        for subView in subViews {
            view.addSubview(subView)
        }
        return view
    }

    func withFrame(_ frame: CGRect) -> ViewBuilder {
        self.frame = frame
        return self
    }

    func withHidden(_ isHidden: Bool) -> ViewBuilder {
        self.isHidden = isHidden
        return self
    }

    func withAlpha(_ alpha: CGFloat) -> ViewBuilder {
        self.alpha = alpha
        return self
    }

    func withTintColor(_ tintColor: UIColor) -> ViewBuilder {
        self.tintColor = tintColor
        return self
    }

    func withCornerRadius(_ radius: CGFloat) -> ViewBuilder {
        self.cornerRadius = radius
        return self
    }

    func withBorderWidth(_ width: CGFloat) -> ViewBuilder {
        self.borderWidth = width
        return self
    }

    func withBorderColor(_ color: UIColor) -> ViewBuilder {
        self.borderColor = color
        return self
    }

    func withSubViews(_ subViews: [UIView]) -> ViewBuilder {
        self.subViews = subViews
        return self
    }
}
