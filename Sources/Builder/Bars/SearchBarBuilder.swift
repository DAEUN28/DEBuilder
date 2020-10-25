//
//  SearchBarBuilder.swift
//  DEBuilder
//
//  Created by DaEun Kim on 2020/10/14.
//

import UIKit

public class SearchBarBuilder<Element: UISearchBar>: ViewBuilder<Element> {

  // MARK: Property

  private weak var delegate: UISearchBarDelegate?
  private var placeholder: String?
  private var prompt: String?
  private var text: String?
  private var barTintColor: UIColor?
  private var searchBarStyle: UISearchBar.Style = .default
  private var tintColor: UIColor?
  private var isTranslucent: Bool = true
  private var barStyle: UIBarStyle = .default
  private var showsBookmarkButton: Bool = false
  private var showsCancelButton: Bool = false
  private var showsSearchResultsButton: Bool = false
  private var isSearchResultsButtonSelected: Bool = false
  private var scopeButtonTitles: [String]?
  private var selectedScopeButtonIndex: Int = 0
  private var showsScopeBar: Bool = false
  private var backgroundImage: UIImage?
  private var inputAccessoryView: UIView?
  private var scopeBarBackgroundImage: UIImage?

  // MARK: BuilderType

  override public func build() -> Element {
    return super.build()
      .with(\.delegate, setTo: delegate)
      .with(\.placeholder, setTo: placeholder)
      .with(\.prompt, setTo: prompt)
      .with(\.text, setTo: text)
      .with(\.barTintColor, setTo: barTintColor)
      .with(\.searchBarStyle, setTo: searchBarStyle)
      .with(\.tintColor, setTo: tintColor)
      .with(\.isTranslucent, setTo: isTranslucent)
      .with(\.barStyle, setTo: barStyle)
      .with(\.showsBookmarkButton, setTo: showsBookmarkButton)
      .with(\.showsCancelButton, setTo: showsCancelButton)
      .with(\.showsSearchResultsButton, setTo: showsSearchResultsButton)
      .with(\.isSearchResultsButtonSelected, setTo: isSearchResultsButtonSelected)
      .with(\.scopeButtonTitles, setTo: scopeButtonTitles)
      .with(\.selectedScopeButtonIndex, setTo: selectedScopeButtonIndex)
      .with(\.showsScopeBar, setTo: showsScopeBar)
      .with(\.backgroundImage, setTo: backgroundImage)
      .with(\.inputAccessoryView, setTo: inputAccessoryView)
      .with(\.scopeBarBackgroundImage, setTo: scopeBarBackgroundImage)
  }

  // MARK: Builder Method

  public func withDelegate(_ delegate: UISearchBarDelegate?) -> SearchBarBuilder {
    self.delegate = delegate
    return self
  }

  public func withPlaceholder(_ placeholder: String?) -> SearchBarBuilder {
    self.placeholder = placeholder
    return self
  }

  public func withPrompt(_ prompt: String?) -> SearchBarBuilder {
    self.prompt = prompt
    return self
  }

  public func withText(_ text: String?) -> SearchBarBuilder {
    self.text = text
    return self
  }

  public func withBarTintColor(_ barTintColor: UIColor?) -> SearchBarBuilder {
    self.barTintColor = barTintColor
    return self
  }

  public func withSearchBarStyle(_ searchBarStyle: UISearchBar.Style) -> SearchBarBuilder {
    self.searchBarStyle = searchBarStyle
    return self
  }

  public func withTintColor(_ isTranslucent: Bool) -> SearchBarBuilder {
    self.isTranslucent = isTranslucent
    return self
  }

  public func withBarStyle(_ barStyle: UIBarStyle) -> SearchBarBuilder {
    self.barStyle = barStyle
    return self
  }

  public func withShowsBookmarkButton(_ showsBookmarkButton: Bool) -> SearchBarBuilder {
    self.showsBookmarkButton = showsBookmarkButton
    return self
  }

  public func withShowsCancelButton(_ showsCancelButton: Bool) -> SearchBarBuilder {
    self.showsCancelButton = showsCancelButton
    return self
  }

  public func withShowsSearchResultsButton(_ showsSearchResultsButton: Bool) -> SearchBarBuilder {
    self.showsSearchResultsButton = showsSearchResultsButton
    return self
  }

  public func withSearchResultsButtonSelected(
    _ isSearchResultsButtonSelected: Bool
  ) -> SearchBarBuilder {
    self.isSearchResultsButtonSelected = isSearchResultsButtonSelected
    return self
  }

  public func withScopeButtonTitles(_ scopeButtonTitles: [String]?) -> SearchBarBuilder {
    self.scopeButtonTitles = scopeButtonTitles
    return self
  }

  public func withSelectedScopeButtonIndex(_ selectedScopeButtonIndex: Int) -> SearchBarBuilder {
    self.selectedScopeButtonIndex = selectedScopeButtonIndex
    return self
  }

  public func withShowsScopeBar(_ showsScopeBar: Bool) -> SearchBarBuilder {
    self.showsScopeBar = showsScopeBar
    return self
  }

  public func withBackgroundImage(_ backgroundImage: UIImage?) -> SearchBarBuilder {
    self.backgroundImage = backgroundImage
    return self
  }

  public func withInputAccessoryView(_ inputAccessoryView: UIView?) -> SearchBarBuilder {
    self.inputAccessoryView = inputAccessoryView
    return self
  }

  public func withScopeBarBackgroundImage(_ scopeBarBackgroundImage: UIImage?) -> SearchBarBuilder {
    self.scopeBarBackgroundImage = scopeBarBackgroundImage
    return self
  }
}
